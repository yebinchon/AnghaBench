
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int tm_sec; int tm_min; int tm_hour; } ;


 int ACS_HLINE ;
 int ACS_LLCORNER ;
 int ACS_LRCORNER ;
 int ACS_ULCORNER ;
 int ACS_URCORNER ;
 int ACS_VLINE ;
 int CLOCK_REALTIME_FAST ;
 int COLOR_BLACK ;
 int COLOR_PAIR (int) ;
 int COLOR_RED ;
 int COLOR_WHITE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int XBASE ;
 int XLENGTH ;
 int YBASE ;
 int YDEPTH ;
 int addstr (char*) ;
 int atoi (char*) ;
 int attrset (int ) ;
 int cbreak () ;
 int clear () ;
 int clock_gettime (int ,TYPE_2__*) ;
 int curs_set (int ) ;
 int endwin () ;
 int errx (int,char*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ has_colors () ;
 scalar_t__ hascolor ;
 int hline (int ,int) ;
 int init_pair (int,int ,int ) ;
 int initscr () ;
 TYPE_1__* localtime (scalar_t__*) ;
 long mask ;
 int move (int,int) ;
 int movto (int,int) ;
 int mvaddch (int,int,int ) ;
 int mvaddstr (int,int,char*) ;
 int nanosleep (struct timespec*,int *) ;
 long* new ;
 long* next ;
 int noecho () ;
 TYPE_2__ now ;
 long* old ;
 scalar_t__ optind ;
 int refresh () ;
 int set (int,int) ;
 int sighndl ;
 int signal (int ,int ) ;
 scalar_t__ sigtermed ;
 int standend () ;
 int standt (int) ;
 int start_color () ;
 TYPE_1__* tm ;
 int usage () ;
 int vline (int ,int) ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 struct timespec delay;
 time_t prev_sec;
 long t, a;
 int i, j, s, k;
 int n;
 int ch;
 int scrol;
 int t12;

 t12 = scrol = 0;

 while ((ch = getopt(argc, argv, "ts")) != -1)
 switch (ch) {
 case 's':
  scrol = 1;
  break;
 case 't':
  t12 = 1;
  break;
 case '?':
 default:
  usage();

 }
 argc -= optind;
 argv += optind;

 if (argc > 1) {
  usage();

 }

 if (argc > 0) {
  n = atoi(*argv) + 1;
  if (n < 1) {
   warnx("number of seconds is out of range");
   usage();

  }
 } else
  n = 0;

 initscr();

 signal(SIGINT,sighndl);
 signal(SIGTERM,sighndl);
 signal(SIGHUP,sighndl);

 cbreak();
 noecho();
 curs_set(0);

 hascolor = has_colors();

 if(hascolor) {
  start_color();
  init_pair(1, COLOR_BLACK, COLOR_RED);
  init_pair(2, COLOR_RED, COLOR_BLACK);
  init_pair(3, COLOR_WHITE, COLOR_BLACK);
  attrset(COLOR_PAIR(2));
 }

 clear();
 refresh();

 if(hascolor) {
  attrset(COLOR_PAIR(3));

  mvaddch(YBASE - 2, XBASE - 3, ACS_ULCORNER);
  hline(ACS_HLINE, XLENGTH);
  mvaddch(YBASE - 2, XBASE - 2 + XLENGTH, ACS_URCORNER);

  mvaddch(YBASE + YDEPTH - 1, XBASE - 3, ACS_LLCORNER);
  hline(ACS_HLINE, XLENGTH);
  mvaddch(YBASE + YDEPTH - 1, XBASE - 2 + XLENGTH, ACS_LRCORNER);

  move(YBASE - 1, XBASE - 3);
  vline(ACS_VLINE, YDEPTH);

  move(YBASE - 1, XBASE - 2 + XLENGTH);
  vline(ACS_VLINE, YDEPTH);

  attrset(COLOR_PAIR(2));
 }
 clock_gettime(CLOCK_REALTIME_FAST, &now);
 prev_sec = now.tv_sec;
 do {
  mask = 0;
  tm = localtime(&now.tv_sec);
  set(tm->tm_sec%10, 0);
  set(tm->tm_sec/10, 4);
  set(tm->tm_min%10, 10);
  set(tm->tm_min/10, 14);

  if (t12) {
   if (tm->tm_hour < 12) {
    if (tm->tm_hour == 0)
     tm->tm_hour = 12;
    mvaddstr(YBASE + 5, XBASE + 52, "AM");
   } else {
    if (tm->tm_hour > 12)
     tm->tm_hour -= 12;
    mvaddstr(YBASE + 5, XBASE + 52, "PM");
   }
  }

  set(tm->tm_hour%10, 20);
  set(tm->tm_hour/10, 24);
  set(10, 7);
  set(10, 17);
  for(k=0; k<6; k++) {
   if(scrol) {
    for(i=0; i<5; i++)
     new[i] = (new[i]&~mask) | (new[i+1]&mask);
    new[5] = (new[5]&~mask) | (next[k]&mask);
   } else
    new[k] = (new[k]&~mask) | (next[k]&mask);
   next[k] = 0;
   for(s=1; s>=0; s--) {
    standt(s);
    for(i=0; i<6; i++) {
     if((a = (new[i]^old[i])&(s ? new : old)[i]) != 0) {
      for(j=0,t=1<<26; t; t>>=1,j++) {
       if(a&t) {
        if(!(a&(t<<1))) {
         movto(YBASE + i, XBASE + 2*j);
        }
        addstr("  ");
       }
      }
     }
     if(!s) {
      old[i] = new[i];
     }
    }
    if(!s) {
     refresh();
    }
   }
  }
  movto(6, 0);
  refresh();
  clock_gettime(CLOCK_REALTIME_FAST, &now);
  if (now.tv_sec == prev_sec) {
   if (delay.tv_nsec > 0) {
    delay.tv_sec = 0;
    delay.tv_nsec = 1000000000 - now.tv_nsec;
   } else {
    delay.tv_sec = 1;
    delay.tv_nsec = 0;
   }
   nanosleep(&delay, ((void*)0));
   clock_gettime(CLOCK_REALTIME_FAST, &now);
  }
  n -= now.tv_sec - prev_sec;
  prev_sec = now.tv_sec;
  if (sigtermed) {
   standend();
   clear();
   refresh();
   endwin();
   errx(1, "terminated by signal %d", (int)sigtermed);
  }
 } while (n);
 standend();
 clear();
 refresh();
 endwin();
 return(0);
}

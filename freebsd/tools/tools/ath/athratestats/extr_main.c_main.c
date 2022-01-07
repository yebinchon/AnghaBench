
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int useconds_t ;
typedef int uint8_t ;
struct ether_addr {int dummy; } ;
struct TYPE_2__ {char* buf; int len; } ;
struct ath_ratestats {scalar_t__ s; TYPE_1__ re; } ;
typedef int r ;


 int AF_INET ;
 char* ATH_DEFAULT ;
 int COLOR_BLUE ;
 int COLOR_CYAN ;
 int COLOR_MAGENTA ;
 int COLOR_RED ;
 int COLOR_YELLOW ;
 int FALSE ;
 int SOCK_DGRAM ;
 int STATS_BUF_SIZE ;
 int TRUE ;
 int ath_setifname (struct ath_ratestats*,char const*) ;
 int bzero (struct ath_ratestats*,int) ;
 int cbreak () ;
 int clear () ;
 int do_loop ;
 int err (int,char*) ;
 int errx (int,char*,char*) ;
 struct ether_addr* ether_aton (char const*) ;
 int exit (int ) ;
 int fetch_and_print_stats (struct ath_ratestats*,struct ether_addr*,int *) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int init_pair (int,int ,short) ;
 int initscr () ;
 int intrflush (int ,int ) ;
 int keypad (int ,int ) ;
 int * malloc (int ) ;
 int move (int ,int ) ;
 int nodelay (int ,int) ;
 int noecho () ;
 int nonl () ;
 char* optarg ;
 int pair_content (int ,short*,short*) ;
 int refresh () ;
 scalar_t__ socket (int ,int ,int ) ;
 int sscanf (char*,char*,float*) ;
 int start_color () ;
 int stdscr ;
 int use_default_colors () ;
 int usleep (int ) ;

int
main(int argc, char *argv[])
{
 char const *ifname = ((void*)0), *macaddr = ((void*)0);
 int c;
 int do_all = 0;
 struct ether_addr *e;
 struct ath_ratestats r;
 uint8_t *buf;
 useconds_t sleep_period;
 float f;
 short cf, cb;

 ifname = getenv("ATH");
 if (ifname == ((void*)0))
  ifname = ATH_DEFAULT;

 while ((c = getopt(argc, argv, "ahi:m:s:")) != -1) {
  switch (c) {
  case 'a':
   do_all = 1;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'm':
   macaddr = optarg;
   break;
  case 's':
   sscanf(optarg, "%f", &f);
   do_loop = 1;
   sleep_period = (useconds_t) (f * 1000000.0);
   break;
  default:
   errx(1,
       "usage: %s [-h] [-i ifname] [-a] [-m macaddr] [-s sleep period]\n",
       argv[0]);

  }
 }

 if (macaddr == ((void*)0)) {
  errx(1, "%s: macaddress wasn't supplied and no -a given\n",
      argv[0]);

 }
 e = ether_aton(macaddr);
 if (e == ((void*)0))
  err(1, "ether_aton");

 bzero(&r, sizeof(r));




 buf = malloc(STATS_BUF_SIZE);
 if (buf == ((void*)0))
  err(1, "calloc");

 r.re.buf = (char *) buf;
 r.re.len = STATS_BUF_SIZE;

 r.s = socket(AF_INET, SOCK_DGRAM, 0);
 if (r.s < 0) {
  err(1, "socket");
 }


 ath_setifname(&r, ifname);

 if (do_loop) {
  initscr();
  start_color();
  use_default_colors();
  pair_content(0, &cf, &cb);

  init_pair(1, COLOR_YELLOW, cb);

  init_pair(2, COLOR_RED, cb);

  init_pair(3, COLOR_CYAN, cb);

  init_pair(4, COLOR_BLUE, cb);

  init_pair(5, COLOR_MAGENTA, cb);
  cbreak();
  noecho();
  nonl();
  nodelay(stdscr, 1);
  intrflush(stdscr, FALSE);
  keypad(stdscr, TRUE);

  while (1) {
   clear();
   move(0, 0);
   fetch_and_print_stats(&r, e, buf);
   refresh();
   usleep(sleep_period);
  }
 } else
  fetch_and_print_stats(&r, e, buf);

 exit(0);
}

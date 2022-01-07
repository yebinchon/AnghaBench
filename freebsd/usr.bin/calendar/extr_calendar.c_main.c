
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {long tm_gmtoff; } ;
typedef scalar_t__ pid_t ;
typedef int login_cap_t ;
struct TYPE_5__ {int pw_uid; int pw_dir; } ;


 int CODESET ;
 int * DEBUG ;
 int EPERM ;
 int EastLongitude ;
 int LC_ALL ;
 int LOGIN_SETALL ;
 int LONGITUDE_NOTSET ;
 scalar_t__ Mktime (void*) ;
 long SECSPERHOUR ;
 long SECSPERMINUTE ;
 int UTCOFFSET_NOTSET ;
 int UTCOffset ;
 int atoi (void*) ;
 int cal () ;
 void* calendarFile ;
 int chdir (int ) ;
 int debug ;
 int doall ;
 int dodebug (int *) ;
 int dumpdates () ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ f_time ;
 scalar_t__ fork () ;
 int generatedates (struct tm*,struct tm*) ;
 int getopt (int,char**,char*) ;
 TYPE_1__* getpwent () ;
 int getuid () ;
 int localtime_r (scalar_t__*,struct tm*) ;
 int * login_getpwclass (TYPE_1__*) ;
 int nl_langinfo (int ) ;
 void* optarg ;
 scalar_t__ optind ;
 int * outputEncoding ;
 TYPE_1__* pw ;
 scalar_t__ setenv (char*,char*,int) ;
 int setlocale (int ,char*) ;
 int settimes (scalar_t__,int,int,int,struct tm*,struct tm*) ;
 scalar_t__ setusercontext (int *,TYPE_1__*,int ,int ) ;
 int * strdup (int ) ;
 int strerror (int ) ;
 int strtod (void*,int *) ;
 int strtol (void*,int *,int) ;
 int time (scalar_t__*) ;
 int tzset () ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int f_dayAfter = 0;
 int f_dayBefore = 0;
 int Friday = 5;

 int ch;
 struct tm tp1, tp2;

 (void)setlocale(LC_ALL, "");

 while ((ch = getopt(argc, argv, "-A:aB:D:dF:f:l:t:U:W:?")) != -1)
  switch (ch) {
  case '-':
  case 'a':
   if (getuid()) {
    errno = EPERM;
    err(1, ((void*)0));
   }
   doall = 1;
   break;

  case 'W':
   Friday = -1;


  case 'A':
   f_dayAfter = atoi(optarg);
   if (f_dayAfter < 0)
    errx(1, "number of days must be positive");
   break;

  case 'B':
   f_dayBefore = atoi(optarg);
   if (f_dayBefore < 0)
    errx(1, "number of days must be positive");
   break;

  case 'D':
   DEBUG = optarg;
   break;

  case 'd':
   debug = 1;
   break;

  case 'F':
   Friday = atoi(optarg);
   break;

  case 'f':
   calendarFile = optarg;
   break;

  case 'l':
   EastLongitude = strtol(optarg, ((void*)0), 10);
   break;

  case 't':
   f_time = Mktime(optarg);
   break;

  case 'U':
   UTCOffset = strtod(optarg, ((void*)0));
   break;

  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc)
  usage();


 if (f_time <= 0)
  (void)time(&f_time);


 {
  if (UTCOffset == UTCOFFSET_NOTSET &&
      EastLongitude == LONGITUDE_NOTSET) {

   time_t t;
   struct tm tm;
   long utcoffset, hh, mm, ss;
   double uo;

   time(&t);
   localtime_r(&t, &tm);
   utcoffset = tm.tm_gmtoff;

   hh = utcoffset / SECSPERHOUR;
   utcoffset %= SECSPERHOUR;
   mm = utcoffset / SECSPERMINUTE;
   utcoffset %= SECSPERMINUTE;
   ss = utcoffset;


   uo = mm + (100.0 * (ss / 60.0));
   uo /= 60.0 / 100.0;
   uo = hh + uo / 100;

   UTCOffset = uo;
   EastLongitude = UTCOffset * 15;
  } else if (UTCOffset == UTCOFFSET_NOTSET) {

   UTCOffset = EastLongitude / 15;
  } else if (EastLongitude == LONGITUDE_NOTSET) {

   EastLongitude = UTCOffset * 15;
  }
 }

 settimes(f_time, f_dayBefore, f_dayAfter, Friday, &tp1, &tp2);
 generatedates(&tp1, &tp2);





 if (setenv("TZ", "UTC", 1) != 0)
  errx(1, "setenv: %s", strerror(errno));
 tzset();

 if (debug)
  dumpdates();

 if (DEBUG != ((void*)0)) {
  dodebug(DEBUG);
  exit(0);
 }

 if (doall)
  while ((pw = getpwent()) != ((void*)0)) {
   pid_t pid;

   if (chdir(pw->pw_dir) == -1)
    continue;
   pid = fork();
   if (pid < 0)
    err(1, "fork");
   if (pid == 0) {
    login_cap_t *lc;

    lc = login_getpwclass(pw);
    if (setusercontext(lc, pw, pw->pw_uid,
        LOGIN_SETALL) != 0)
     errx(1, "setusercontext");
    cal();
    exit(0);
   }
  }
 else {






  cal();
 }
 exit(0);
}

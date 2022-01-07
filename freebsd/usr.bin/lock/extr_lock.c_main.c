
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {char* tm_zone; } ;
struct passwd {char* pw_name; } ;
struct pam_conv {int * member_1; int * member_0; } ;
struct TYPE_7__ {int tv_sec; } ;
struct itimerval {TYPE_2__ it_value; int it_interval; } ;
typedef int s1 ;
typedef int s ;
typedef int pam_handle_t ;
typedef int hostname ;
struct TYPE_6__ {int c_lflag; } ;


 int BUFSIZ ;
 int ECHO ;
 scalar_t__ EINTR ;
 int ITIMER_REAL ;
 int LOG_AUTH ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int MAXHOSTNAMELEN ;
 int PAM_AUTH_ERR ;
 int PAM_MAXTRIES ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int PAM_USER_UNKNOWN ;
 int SIGALRM ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTSTP ;
 int TCSADRAIN ;
 int TCSASOFT ;
 int TIMEOUT ;
 int VT_LOCKSWITCH ;
 int _PATH_DEV ;
 char* asctime (struct tm*) ;
 int atoi (int ) ;
 int bye (int ) ;
 int clearerr (int ) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fgets (char*,int,int ) ;
 int gethostname (char*,int) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 int hi (int ) ;
 int ioctl (int ,int ,int*) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ nexttime ;
 int no_timeout ;
 TYPE_1__ ntty ;
 int openlog (char*,int ,int ) ;
 int openpam_ttyconv ;
 int optarg ;
 int pam_authenticate (int *,int ) ;
 int pam_end (int *,int) ;
 int pam_start (char*,char*,struct pam_conv const*,int **) ;
 int pam_strerror (int *,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int quit (int ) ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 scalar_t__ setuid (scalar_t__) ;
 int signal (int ,int (*) (int )) ;
 int sleep (int) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int syslog (int ,char*,...) ;
 scalar_t__ tcgetattr (int ,TYPE_1__*) ;
 int tcsetattr (int ,int,TYPE_1__*) ;
 scalar_t__ time (int *) ;
 TYPE_2__ timeout ;
 TYPE_1__ tty ;
 char* ttyname (int ) ;
 int usage () ;
 int vtyunlock ;
 int zerotime ;

int
main(int argc, char **argv)
{
 static const struct pam_conv pamc = { &openpam_ttyconv, ((void*)0) };
 pam_handle_t *pamh;
 struct passwd *pw;
 struct itimerval ntimer, otimer;
 struct tm *timp;
 time_t timval;
 int ch, failures, pam_err, sectimeout, usemine, vtylock;
 char *ap, *ttynam, *tzn;
 char hostname[MAXHOSTNAMELEN], s[BUFSIZ], s1[BUFSIZ];

 openlog("lock", 0, LOG_AUTH);

 pam_err = PAM_SYSTEM_ERR;

 sectimeout = TIMEOUT;
 pamh = ((void*)0);
 pw = ((void*)0);
 usemine = 0;
 no_timeout = 0;
 vtylock = 0;
 while ((ch = getopt(argc, argv, "npt:v")) != -1)
  switch((char)ch) {
  case 't':
   if ((sectimeout = atoi(optarg)) <= 0)
    errx(1, "illegal timeout value");
   break;
  case 'p':
   usemine = 1;
   if (!(pw = getpwuid(getuid())))
    errx(1, "unknown uid %d", getuid());
   break;
  case 'n':
   no_timeout = 1;
   break;
  case 'v':
   vtylock = 1;
   break;
  case '?':
  default:
   usage();
  }
 timeout.tv_sec = sectimeout * 60;

 if (!usemine) {

  if (setuid(getuid()) != 0)
   errx(1, "setuid failed");
 }

 if (tcgetattr(0, &tty))
  exit(1);
 gethostname(hostname, sizeof(hostname));
 if (!(ttynam = ttyname(0)))
  errx(1, "not a terminal?");
 if (strncmp(ttynam, _PATH_DEV, strlen(_PATH_DEV)) == 0)
  ttynam += strlen(_PATH_DEV);
 timval = time(((void*)0));
 nexttime = timval + (sectimeout * 60);
 timp = localtime(&timval);
 ap = asctime(timp);
 tzn = timp->tm_zone;

 (void)signal(SIGINT, quit);
 (void)signal(SIGQUIT, quit);
 ntty = tty; ntty.c_lflag &= ~ECHO;
 (void)tcsetattr(0, TCSADRAIN|TCSASOFT, &ntty);

 if (usemine) {
  pam_err = pam_start("lock", pw->pw_name, &pamc, &pamh);
  if (pam_err != PAM_SUCCESS)
   err(1, "pam_start: %s", pam_strerror(((void*)0), pam_err));
 } else {

  (void)printf("Key: ");
  if (!fgets(s, sizeof(s), stdin) || *s == '\n')
   quit(0);
  (void)printf("\nAgain: ");




  (void)fgets(s1, sizeof(s1), stdin);
  (void)putchar('\n');
  if (strcmp(s1, s)) {
   (void)printf("\07lock: passwords didn't match.\n");
   (void)tcsetattr(0, TCSADRAIN|TCSASOFT, &tty);
   exit(1);
  }
  s[0] = '\0';
 }


 (void)signal(SIGINT, hi);
 (void)signal(SIGQUIT, hi);
 (void)signal(SIGTSTP, hi);
 (void)signal(SIGALRM, bye);

 ntimer.it_interval = zerotime;
 ntimer.it_value = timeout;
 if (!no_timeout)
  setitimer(ITIMER_REAL, &ntimer, &otimer);
 if (vtylock) {






  if (ioctl(0, VT_LOCKSWITCH, &vtylock) == -1) {
   (void)tcsetattr(0, TCSADRAIN|TCSASOFT, &tty);
   err(1, "locking vty");
  }
  vtyunlock = 0x2;
 }


 if (pw != ((void*)0))
  (void)printf("lock: %s using %s on %s.", pw->pw_name,
      ttynam, hostname);
 else
  (void)printf("lock: %s on %s.", ttynam, hostname);
 if (no_timeout)
  (void)printf(" no timeout.");
 else
  (void)printf(" timeout in %d minute%s.", sectimeout,
      sectimeout != 1 ? "s" : "");
 if (vtylock)
  (void)printf(" vty locked.");
 (void)printf("\ntime now is %.20s%s%s", ap, tzn, ap + 19);

 failures = 0;

 for (;;) {
  if (usemine) {
   pam_err = pam_authenticate(pamh, 0);
   if (pam_err == PAM_SUCCESS)
    break;

   if (pam_err != PAM_AUTH_ERR &&
       pam_err != PAM_USER_UNKNOWN &&
       pam_err != PAM_MAXTRIES) {
    syslog(LOG_ERR, "pam_authenticate: %s",
        pam_strerror(pamh, pam_err));
   }

   goto tryagain;
  }
  (void)printf("Key: ");
  if (!fgets(s, sizeof(s), stdin)) {
   clearerr(stdin);
   hi(0);
   goto tryagain;
  }
  if (!strcmp(s, s1))
   break;
  (void)printf("\07\n");
      failures++;
  if (getuid() == 0)
          syslog(LOG_NOTICE, "%d ROOT UNLOCK FAILURE%s (%s on %s)",
   failures, failures > 1 ? "S": "", ttynam, hostname);
tryagain:
  if (tcgetattr(0, &ntty) && (errno != EINTR))
   exit(1);
  sleep(1);
 }
 if (getuid() == 0)
  syslog(LOG_NOTICE, "ROOT UNLOCK ON hostname %s port %s",
      hostname, ttynam);
 if (usemine)
  (void)pam_end(pamh, pam_err);
 quit(0);
 return(0);
}

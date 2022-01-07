
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct timespec {int dummy; } ;
struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct rusage {int ru_maxrss; int ru_ixrss; int ru_idrss; int ru_isrss; int ru_minflt; int ru_majflt; int ru_nswap; int ru_inblock; int ru_oublock; int ru_msgsnd; int ru_msgrcv; int ru_nsignals; int ru_nvcsw; int ru_nivcsw; TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
typedef scalar_t__ pid_t ;
struct TYPE_6__ {int * decimal_point; } ;
typedef int FILE ;


 int CLOCK_MONOTONIC ;
 int ENOENT ;
 int EXIT_FAILURE ;
 int LC_NUMERIC ;
 int RLIMIT_CORE ;
 int RUSAGE_CHILDREN ;
 int SIGINFO ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_DFL ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _IONBF ;
 struct timespec before_ts ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int decimal_point ;
 int err (int,char*,...) ;
 int errno ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int * fopen (char*,char*) ;
 scalar_t__ fork () ;
 int fprintf (int *,char*,int,char*) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int getrusage (int ,struct rusage*) ;
 int getstathz () ;
 int hflag ;
 int kill (int ,int) ;
 TYPE_3__* localeconv () ;
 char* optarg ;
 scalar_t__ optind ;
 int pflag ;
 int setlocale (int ,char*) ;
 int setrlimit (int ,struct rlimit*) ;
 int setvbuf (int *,char*,int ,size_t) ;
 int showtime (int *,struct timespec*,struct timespec*,struct rusage*) ;
 int siginfo ;
 scalar_t__ siginfo_recvd ;
 int siginterrupt (int,int) ;
 scalar_t__ signal (int,int ) ;
 int * stderr ;
 int * stdout ;
 int usage () ;
 scalar_t__ wait4 (scalar_t__,int*,int ,struct rusage*) ;
 int warn (char*) ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
 int aflag, ch, lflag, status;
 int exitonsig;
 pid_t pid;
 struct rlimit rl;
 struct rusage ru;
 struct timespec after;
 char *ofn = ((void*)0);
 FILE *out = stderr;

 (void) setlocale(LC_NUMERIC, "");
 decimal_point = localeconv()->decimal_point[0];

 aflag = hflag = lflag = pflag = 0;
 while ((ch = getopt(argc, argv, "ahlo:p")) != -1)
  switch((char)ch) {
  case 'a':
   aflag = 1;
   break;
  case 'h':
   hflag = 1;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'o':
   ofn = optarg;
   break;
  case 'p':
   pflag = 1;
   break;
  case '?':
  default:
   usage();
  }

 if (!(argc -= optind))
  exit(0);
 argv += optind;

 if (ofn) {
         if ((out = fopen(ofn, aflag ? "ae" : "we")) == ((void*)0))
          err(1, "%s", ofn);
  setvbuf(out, (char *)((void*)0), _IONBF, (size_t)0);
 }

 if (clock_gettime(CLOCK_MONOTONIC, &before_ts))
  err(1, "clock_gettime");
 switch(pid = fork()) {
 case -1:
  err(1, "time");

 case 0:
  execvp(*argv, argv);
  err(errno == ENOENT ? 127 : 126, "%s", *argv);

 }

 (void)signal(SIGINT, SIG_IGN);
 (void)signal(SIGQUIT, SIG_IGN);
 siginfo_recvd = 0;
 (void)signal(SIGINFO, siginfo);
 (void)siginterrupt(SIGINFO, 1);
 while (wait4(pid, &status, 0, &ru) != pid) {
  if (siginfo_recvd) {
   siginfo_recvd = 0;
   if (clock_gettime(CLOCK_MONOTONIC, &after))
    err(1, "clock_gettime");
   getrusage(RUSAGE_CHILDREN, &ru);
   showtime(stdout, &before_ts, &after, &ru);
  }
 }
 if (clock_gettime(CLOCK_MONOTONIC, &after))
  err(1, "clock_gettime");
 if ( ! WIFEXITED(status))
  warnx("command terminated abnormally");
 exitonsig = WIFSIGNALED(status) ? WTERMSIG(status) : 0;
 showtime(out, &before_ts, &after, &ru);
 if (lflag) {
  int hz = getstathz();
  u_long ticks;

  ticks = hz * (ru.ru_utime.tv_sec + ru.ru_stime.tv_sec) +
       hz * (ru.ru_utime.tv_usec + ru.ru_stime.tv_usec) / 1000000;





  if (ticks == 0)
   ticks = 1;

  fprintf(out, "%10ld  %s\n",
   ru.ru_maxrss, "maximum resident set size");
  fprintf(out, "%10ld  %s\n",
   ru.ru_ixrss / ticks, "average shared memory size");
  fprintf(out, "%10ld  %s\n",
   ru.ru_idrss / ticks, "average unshared data size");
  fprintf(out, "%10ld  %s\n",
   ru.ru_isrss / ticks, "average unshared stack size");
  fprintf(out, "%10ld  %s\n",
   ru.ru_minflt, "page reclaims");
  fprintf(out, "%10ld  %s\n",
   ru.ru_majflt, "page faults");
  fprintf(out, "%10ld  %s\n",
   ru.ru_nswap, "swaps");
  fprintf(out, "%10ld  %s\n",
   ru.ru_inblock, "block input operations");
  fprintf(out, "%10ld  %s\n",
   ru.ru_oublock, "block output operations");
  fprintf(out, "%10ld  %s\n",
   ru.ru_msgsnd, "messages sent");
  fprintf(out, "%10ld  %s\n",
   ru.ru_msgrcv, "messages received");
  fprintf(out, "%10ld  %s\n",
   ru.ru_nsignals, "signals received");
  fprintf(out, "%10ld  %s\n",
   ru.ru_nvcsw, "voluntary context switches");
  fprintf(out, "%10ld  %s\n",
   ru.ru_nivcsw, "involuntary context switches");
 }





 if (exitonsig) {
  if (signal(exitonsig, SIG_DFL) == SIG_ERR)
   warn("signal");
  else {
   rl.rlim_max = rl.rlim_cur = 0;
   if (setrlimit(RLIMIT_CORE, &rl) == -1)
    warn("setrlimit");
   kill(getpid(), exitonsig);
  }
 }
 exit (WIFEXITED(status) ? WEXITSTATUS(status) : EXIT_FAILURE);
}

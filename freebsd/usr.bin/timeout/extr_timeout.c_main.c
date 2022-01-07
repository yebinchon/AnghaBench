
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_flags; int sa_handler; } ;
struct procctl_reaper_status {scalar_t__ rs_children; int rk_sig; scalar_t__ rk_flags; } ;
struct procctl_reaper_kill {scalar_t__ rs_children; int rk_sig; scalar_t__ rk_flags; } ;
struct option {char* member_0; int* member_2; int member_3; int member_1; } ;
typedef int signums ;
typedef int signals ;
typedef int pid_t ;


 scalar_t__ EINTR ;
 scalar_t__ ENOENT ;
 int EXIT_TIMEOUT ;
 int EX_OSERR ;
 int PROC_REAP_ACQUIRE ;
 int PROC_REAP_KILL ;
 int PROC_REAP_RELEASE ;
 int PROC_REAP_STATUS ;
 int P_PID ;
 int SA_RESTART ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int SIGSTOP ;
 int SIGTERM ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_BLOCK ;
 int SIG_DFL ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int execvp (char*,char**) ;
 int fork () ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int getpid () ;
 int kill (int,int) ;
 int memset (struct sigaction*,int ,int) ;
 int no_argument ;
 char* optarg ;
 scalar_t__ optind ;
 double parse_duration (char*) ;
 int parse_signal (char*) ;
 int procctl (int ,int ,int ,struct procctl_reaper_status*) ;
 int required_argument ;
 int set_interval (double) ;
 scalar_t__ sig_alrm ;
 scalar_t__ sig_chld ;
 int sig_handler ;
 int sig_ign ;
 int sig_term ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;
 int usage () ;
 int wait (int*) ;
 int waitpid (int,int*,int ) ;

int
main(int argc, char **argv)
{
 int ch;
 unsigned long i;
 int foreground, preserve;
 int error, pstat, status;
 int killsig = SIGTERM;
 pid_t pid, cpid;
 double first_kill;
 double second_kill;
 bool timedout = 0;
 bool do_second_kill = 0;
 bool child_done = 0;
 struct sigaction signals;
 struct procctl_reaper_status info;
 struct procctl_reaper_kill killemall;
 int signums[] = {
  -1,
  SIGTERM,
  SIGINT,
  SIGHUP,
  SIGCHLD,
  SIGALRM,
  SIGQUIT,
 };

 foreground = preserve = 0;
 second_kill = 0;

 const struct option longopts[] = {
  { "preserve-status", no_argument, &preserve, 1 },
  { "foreground", no_argument, &foreground, 1 },
  { "kill-after", required_argument, ((void*)0), 'k'},
  { "signal", required_argument, ((void*)0), 's'},
  { "help", no_argument, ((void*)0), 'h'},
  { ((void*)0), 0, ((void*)0), 0 }
 };

 while ((ch = getopt_long(argc, argv, "+k:s:h", longopts, ((void*)0))) != -1) {
  switch (ch) {
   case 'k':
    do_second_kill = 1;
    second_kill = parse_duration(optarg);
    break;
   case 's':
    killsig = parse_signal(optarg);
    break;
   case 0:
    break;
   case 'h':
   default:
    usage();
    break;
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage();

 first_kill = parse_duration(argv[0]);
 argc--;
 argv++;

 if (!foreground) {

  if (procctl(P_PID, getpid(), PROC_REAP_ACQUIRE, ((void*)0)) == -1)
   err(EX_OSERR, "Fail to acquire the reaper");
 }

 memset(&signals, 0, sizeof(signals));
 sigemptyset(&signals.sa_mask);

 if (killsig != SIGKILL && killsig != SIGSTOP)
  signums[0] = killsig;

 for (i = 0; i < sizeof(signums) / sizeof(signums[0]); i ++)
  sigaddset(&signals.sa_mask, signums[i]);

 signals.sa_handler = sig_handler;
 signals.sa_flags = SA_RESTART;

 for (i = 0; i < sizeof(signums) / sizeof(signums[0]); i ++)
  if (signums[i] != -1 && signums[i] != 0 &&
      sigaction(signums[i], &signals, ((void*)0)) == -1)
   err(EX_OSERR, "sigaction()");

 signal(SIGTTIN, SIG_IGN);
 signal(SIGTTOU, SIG_IGN);

 pid = fork();
 if (pid == -1)
  err(EX_OSERR, "fork()");
 else if (pid == 0) {

  signal(SIGTTIN, SIG_DFL);
  signal(SIGTTOU, SIG_DFL);

  error = execvp(argv[0], argv);
  if (error == -1) {
   if (errno == ENOENT)
    err(127, "exec(%s)", argv[0]);
   else
    err(126, "exec(%s)", argv[0]);
  }
 }

 if (sigprocmask(SIG_BLOCK, &signals.sa_mask, ((void*)0)) == -1)
  err(EX_OSERR, "sigprocmask()");


 set_interval(first_kill);

 for (;;) {
  sigemptyset(&signals.sa_mask);
  sigsuspend(&signals.sa_mask);

  if (sig_chld) {
   sig_chld = 0;

   while ((cpid = waitpid(-1, &status, WNOHANG)) != 0) {
    if (cpid < 0) {
     if (errno == EINTR)
      continue;
     else
      break;
    } else if (cpid == pid) {
     pstat = status;
     child_done = 1;
    }
   }
   if (child_done) {
    if (foreground) {
     break;
    } else {
     procctl(P_PID, getpid(),
         PROC_REAP_STATUS, &info);
     if (info.rs_children == 0)
      break;
    }
   }
  } else if (sig_alrm) {
   sig_alrm = 0;

   timedout = 1;
   if (!foreground) {
    killemall.rk_sig = killsig;
    killemall.rk_flags = 0;
    procctl(P_PID, getpid(), PROC_REAP_KILL,
        &killemall);
   } else
    kill(pid, killsig);

   if (do_second_kill) {
    set_interval(second_kill);
    second_kill = 0;
    sig_ign = killsig;
    killsig = SIGKILL;
   } else
    break;

  } else if (sig_term) {
   if (!foreground) {
    killemall.rk_sig = sig_term;
    killemall.rk_flags = 0;
    procctl(P_PID, getpid(), PROC_REAP_KILL,
        &killemall);
   } else
    kill(pid, sig_term);

   if (do_second_kill) {
    set_interval(second_kill);
    second_kill = 0;
    sig_ign = killsig;
    killsig = SIGKILL;
   } else
    break;
  }
 }

 while (!child_done && wait(&pstat) == -1) {
  if (errno != EINTR)
   err(EX_OSERR, "waitpid()");
 }

 if (!foreground)
  procctl(P_PID, getpid(), PROC_REAP_RELEASE, ((void*)0));

 if (WEXITSTATUS(pstat))
  pstat = WEXITSTATUS(pstat);
 else if(WIFSIGNALED(pstat))
  pstat = 128 + WTERMSIG(pstat);

 if (timedout && !preserve)
  pstat = EXIT_TIMEOUT;

 return (pstat);
}

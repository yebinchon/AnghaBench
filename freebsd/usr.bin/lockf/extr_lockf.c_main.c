
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int pid_t ;


 int EX_OSERR ;
 int EX_SOFTWARE ;
 int EX_TEMPFAIL ;
 int EX_USAGE ;
 int O_CREAT ;
 int O_NONBLOCK ;
 int SIGALRM ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int _exit (int) ;
 int acquire_lock (char*,int) ;
 int alarm (int) ;
 int atexit (int ) ;
 int cleanup ;
 int close (int) ;
 int err (int ,char*) ;
 int errx (int ,char*,char*) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int fork () ;
 int getopt (int,char**,char*) ;
 int keep ;
 int killed ;
 int lockfd ;
 char* lockname ;
 char* optarg ;
 int optind ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int strtol (char*,char**,int ) ;
 int timed_out ;
 int timeout ;
 int usage () ;
 int wait_for_lock (char*) ;
 int waitpid (int,int*,int ) ;
 int warn (char*,char*) ;

int
main(int argc, char **argv)
{
 int ch, flags, silent, status, waitsec;
 pid_t child;

 silent = keep = 0;
 flags = O_CREAT;
 waitsec = -1;
 while ((ch = getopt(argc, argv, "sknt:")) != -1) {
  switch (ch) {
  case 'k':
   keep = 1;
   break;
  case 'n':
   flags &= ~O_CREAT;
   break;
  case 's':
   silent = 1;
   break;
  case 't':
  {
   char *endptr;
   waitsec = strtol(optarg, &endptr, 0);
   if (*optarg == '\0' || *endptr != '\0' || waitsec < 0)
    errx(EX_USAGE,
        "invalid timeout \"%s\"", optarg);
  }
   break;
  default:
   usage();
  }
 }
 if (argc - optind < 2)
  usage();
 lockname = argv[optind++];
 argc -= optind;
 argv += optind;
 if (waitsec > 0) {
  struct sigaction act;

  act.sa_handler = timeout;
  sigemptyset(&act.sa_mask);
  act.sa_flags = 0;
  sigaction(SIGALRM, &act, ((void*)0));
  alarm(waitsec);
 }
 lockfd = acquire_lock(lockname, flags | O_NONBLOCK);
 while (lockfd == -1 && !timed_out && waitsec != 0) {
  if (keep)
   lockfd = acquire_lock(lockname, flags);
  else {
   wait_for_lock(lockname);
   lockfd = acquire_lock(lockname, flags | O_NONBLOCK);
  }
 }
 if (waitsec > 0)
  alarm(0);
 if (lockfd == -1) {
  if (silent)
   exit(EX_TEMPFAIL);
  errx(EX_TEMPFAIL, "%s: already locked", lockname);
 }

 if (atexit(cleanup) == -1)
  err(EX_OSERR, "atexit failed");
 if ((child = fork()) == -1)
  err(EX_OSERR, "cannot fork");
 if (child == 0) {
  close(lockfd);
  execvp(argv[0], argv);
  warn("%s", argv[0]);
  _exit(1);
 }

 signal(SIGINT, SIG_IGN);
 signal(SIGQUIT, SIG_IGN);
 signal(SIGTERM, killed);
 if (waitpid(child, &status, 0) == -1)
  err(EX_OSERR, "waitpid failed");
 return (WIFEXITED(status) ? WEXITSTATUS(status) : EX_SOFTWARE);
}

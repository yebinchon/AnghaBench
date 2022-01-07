
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int outfd; int dosyslog; int logpri; int noclose; int sa_mask; int sa_handler; } ;
struct pidfh {int dummy; } ;
struct log_params {int outfd; int dosyslog; int logpri; int noclose; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef int logpar ;
typedef int act_term ;
typedef int act_chld ;


 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_NOTICE ;
 int LOG_PID ;
 int MADV_PROTECT ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_WRONLY ;
 int SIGCHLD ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SIG_UNBLOCK ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ child_gone ;
 int close (int) ;
 int closelog () ;
 int daemon (int,int) ;
 int daemon_sleep (int,int ) ;
 int dup2 (int,int) ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int facilitynames ;
 int fork () ;
 int get_log_mapping (char*,int ) ;
 int getopt (int,char**,char*) ;
 int handle_chld ;
 int handle_term ;
 int listen_child (int,struct sigaction*) ;
 int madvise (int *,int ,int ) ;
 int memset (struct sigaction*,int ,int) ;
 int open (char const*,int,int) ;
 int open_pid_files (char const*,char const*,struct pidfh**,struct pidfh**) ;
 int openlog (char const*,int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int pid ;
 int pidfile_remove (struct pidfh*) ;
 int pidfile_write (struct pidfh*) ;
 scalar_t__ pipe (int*) ;
 int prioritynames ;
 int restrict_process (char const*) ;
 int setproctitle (char*,char const*,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;
 int strtol (char*,char**,int) ;
 scalar_t__ terminate ;
 int usage () ;
 int warn (char*) ;

int
main(int argc, char *argv[])
{
 const char *pidfile, *ppidfile, *title, *user, *outfn, *logtag;
 int ch, nochdir, noclose, restart, dosyslog, child_eof;
 sigset_t mask_susp, mask_orig, mask_read, mask_term;
 struct log_params logpar;
 int pfd[2] = { -1, -1 }, outfd = -1;
 int stdmask, logpri, logfac;
 struct pidfh *ppfh, *pfh;
 char *p;

 memset(&logpar, 0, sizeof(logpar));
 stdmask = STDOUT_FILENO | STDERR_FILENO;
 ppidfile = pidfile = user = ((void*)0);
 nochdir = noclose = 1;
 logpri = LOG_NOTICE;
 logfac = LOG_DAEMON;
 logtag = "daemon";
 restart = 0;
 dosyslog = 0;
 outfn = ((void*)0);
 title = ((void*)0);
 while ((ch = getopt(argc, argv, "cfSp:P:ru:o:s:l:t:l:m:R:T:")) != -1) {
  switch (ch) {
  case 'c':
   nochdir = 0;
   break;
  case 'f':
   noclose = 0;
   break;
  case 'l':
   logfac = get_log_mapping(optarg, facilitynames);
   if (logfac == -1)
    errx(5, "unrecognized syslog facility");
   dosyslog = 1;
   break;
  case 'm':
   stdmask = strtol(optarg, &p, 10);
   if (p == optarg || stdmask < 0 || stdmask > 3)
    errx(6, "unrecognized listening mask");
   break;
  case 'o':
   outfn = optarg;
   break;
  case 'p':
   pidfile = optarg;
   break;
  case 'P':
   ppidfile = optarg;
   break;
  case 'r':
   restart = 1;
   break;
  case 'R':
   restart = strtol(optarg, &p, 0);
   if (p == optarg || restart < 1)
    errx(6, "invalid restart delay");
   break;
  case 's':
   logpri = get_log_mapping(optarg, prioritynames);
   if (logpri == -1)
    errx(4, "unrecognized syslog priority");
   dosyslog = 1;
   break;
  case 'S':
   dosyslog = 1;
   break;
  case 't':
   title = optarg;
   break;
  case 'T':
   logtag = optarg;
   dosyslog = 1;
   break;
  case 'u':
   user = optarg;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();

 if (!title)
  title = argv[0];

 if (outfn) {
  outfd = open(outfn, O_CREAT | O_WRONLY | O_APPEND | O_CLOEXEC, 0600);
  if (outfd == -1)
   err(7, "open");
 }

 if (dosyslog)
  openlog(logtag, LOG_PID | LOG_NDELAY, logfac);

 ppfh = pfh = ((void*)0);




 open_pid_files(pidfile, ppidfile, &pfh, &ppfh);
 if (daemon(nochdir, noclose) == -1) {
  warn("daemon");
  goto exit;
 }

 pidfile_write(ppfh);
 pid = -1;
 if (pidfile || ppidfile || restart || outfd != -1 || dosyslog) {
  struct sigaction act_term, act_chld;


  memset(&act_term, 0, sizeof(act_term));
  act_term.sa_handler = handle_term;
  sigemptyset(&act_term.sa_mask);
  sigaddset(&act_term.sa_mask, SIGCHLD);

  memset(&act_chld, 0, sizeof(act_chld));
  act_chld.sa_handler = handle_chld;
  sigemptyset(&act_chld.sa_mask);
  sigaddset(&act_chld.sa_mask, SIGTERM);


  sigemptyset(&mask_susp);
  sigaddset(&mask_susp, SIGTERM);
  sigaddset(&mask_susp, SIGCHLD);

  sigemptyset(&mask_term);
  sigaddset(&mask_term, SIGTERM);





  sigemptyset(&mask_read);
  sigaddset(&mask_read, SIGCHLD);

  if (sigprocmask(SIG_BLOCK, &mask_term, &mask_orig)) {
   warn("sigprocmask");
   goto exit;
  }
  if (sigaction(SIGTERM, &act_term, ((void*)0)) == -1) {
   warn("sigaction");
   goto exit;
  }
  if (sigaction(SIGCHLD, &act_chld, ((void*)0)) == -1) {
   warn("sigaction");
   goto exit;
  }





  (void)madvise(((void*)0), 0, MADV_PROTECT);
  logpar.outfd = outfd;
  logpar.dosyslog = dosyslog;
  logpar.logpri = logpri;
  logpar.noclose = noclose;
restart:
  if (pipe(pfd))
   err(1, "pipe");



  child_gone = 0;
  pid = fork();
  if (pid == -1) {
   warn("fork");
   goto exit;
  } else if (pid > 0) {




   if (sigprocmask(SIG_UNBLOCK, &mask_term, ((void*)0))) {
    warn("sigprocmask");
    goto exit;
   }
   close(pfd[1]);
   pfd[1] = -1;
  }
 }
 if (pid <= 0) {

  pidfile_write(pfh);

  if (user != ((void*)0))
   restrict_process(user);




  if (pid == 0) {
   close(pfd[0]);
   if (sigprocmask(SIG_SETMASK, &mask_orig, ((void*)0)))
    err(1, "sigprogmask");
   if (stdmask & STDERR_FILENO) {
    if (dup2(pfd[1], STDERR_FILENO) == -1)
     err(1, "dup2");
   }
   if (stdmask & STDOUT_FILENO) {
    if (dup2(pfd[1], STDOUT_FILENO) == -1)
     err(1, "dup2");
   }
   if (pfd[1] != STDERR_FILENO &&
       pfd[1] != STDOUT_FILENO)
    close(pfd[1]);
  }
  execvp(argv[0], argv);




  err(1, "%s", argv[0]);
 }
 setproctitle("%s[%d]", title, (int)pid);






 child_eof = 0;
 for (;;) {
  if (child_gone && child_eof) {
   break;
  } else if (terminate) {
   goto exit;
  } else if (!child_eof) {
   if (sigprocmask(SIG_BLOCK, &mask_read, ((void*)0))) {
    warn("sigprocmask");
    goto exit;
   }
   child_eof = !listen_child(pfd[0], &logpar);
   if (sigprocmask(SIG_UNBLOCK, &mask_read, ((void*)0))) {
    warn("sigprocmask");
    goto exit;
   }
  } else {
   if (sigprocmask(SIG_BLOCK, &mask_susp, ((void*)0))) {
    warn("sigprocmask");
     goto exit;
   }
   while (!terminate && !child_gone)
    sigsuspend(&mask_orig);
   if (sigprocmask(SIG_UNBLOCK, &mask_susp, ((void*)0))) {
    warn("sigprocmask");
    goto exit;
   }
  }
 }
 if (restart && !terminate)
  daemon_sleep(restart, 0);
 if (sigprocmask(SIG_BLOCK, &mask_term, ((void*)0))) {
  warn("sigprocmask");
  goto exit;
 }
 if (restart && !terminate) {
  close(pfd[0]);
  pfd[0] = -1;
  goto restart;
 }
exit:
 close(outfd);
 close(pfd[0]);
 close(pfd[1]);
 if (dosyslog)
  closelog();
 pidfile_remove(pfh);
 pidfile_remove(ppfh);
 exit(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmdargs {int argc; int argn; char const** argv; TYPE_1__* prompt; int bundle; } ;
typedef scalar_t__ pid_t ;
struct TYPE_3__ {int fd_out; scalar_t__ owner; } ;


 int F_SETFD ;
 int ID0realuid () ;
 int LogALERT ;
 int LogERROR ;
 int LogWARN ;
 int MAXARGS ;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 char* _PATH_BSHELL ;
 int _PATH_DEVNULL ;
 int _exit (int) ;
 int command_Expand (char**,int,char const**,int ,int ,scalar_t__) ;
 int daemon (int,int) ;
 int dup2 (int,int) ;
 int errno ;
 int execl (char const*,char const*,char*) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int fcntl (int,int ,int) ;
 scalar_t__ fork () ;
 int getdtablesize () ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 int log_Printf (int ,char*,...) ;
 int open (int ,int ) ;
 int printf (char*,char const*) ;
 int prompt_TtyCommandMode (TYPE_1__*) ;
 int prompt_TtyOldMode (TYPE_1__*) ;
 int setuid (int ) ;
 int strerror (int ) ;
 int timer_TermService () ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
ShellCommand(struct cmdargs const *arg, int bg)
{
  const char *shell;
  pid_t shpid, pid;
  if (arg->argc == arg->argn) {
    if (!arg->prompt) {
      log_Printf(LogWARN, "Can't start an interactive shell from"
                " a config file\n");
      return 1;
    } else if (arg->prompt->owner) {
      log_Printf(LogWARN, "Can't start an interactive shell from"
                " a socket connection\n");
      return 1;
    } else if (bg) {
      log_Printf(LogWARN, "Can only start an interactive shell in"
  " the foreground mode\n");
      return 1;
    }
  }

  pid = getpid();
  if ((shpid = fork()) == 0) {
    int i, fd;

    if ((shell = getenv("SHELL")) == ((void*)0))
      shell = _PATH_BSHELL;

    timer_TermService();

    if (arg->prompt)
      fd = arg->prompt->fd_out;
    else if ((fd = open(_PATH_DEVNULL, O_RDWR)) == -1) {
      log_Printf(LogALERT, "Failed to open %s: %s\n",
                _PATH_DEVNULL, strerror(errno));
      exit(1);
    }
    dup2(fd, STDIN_FILENO);
    dup2(fd, STDOUT_FILENO);
    dup2(fd, STDERR_FILENO);
    for (i = getdtablesize(); i > STDERR_FILENO; i--)
      fcntl(i, F_SETFD, 1);


    setuid(ID0realuid());

    if (arg->argc > arg->argn) {

      char *argv[MAXARGS];
      int argc = arg->argc - arg->argn;

      if (argc >= (int)(sizeof argv / sizeof argv[0])) {
        argc = sizeof argv / sizeof argv[0] - 1;
        log_Printf(LogWARN, "Truncating shell command to %d args\n", argc);
      }
      command_Expand(argv, argc, arg->argv + arg->argn, arg->bundle, 0, pid);
      if (bg) {
 pid_t p;

 p = getpid();
 if (daemon(1, 1) == -1) {
   log_Printf(LogERROR, "%ld: daemon: %s\n", (long)p, strerror(errno));
   exit(1);
 }
      } else if (arg->prompt)
        printf("ppp: Pausing until %s finishes\n", arg->argv[arg->argn]);
      execvp(argv[0], argv);
    } else {
      if (arg->prompt)
        printf("ppp: Pausing until %s finishes\n", shell);
      prompt_TtyOldMode(arg->prompt);
      execl(shell, shell, (char *)((void*)0));
    }

    log_Printf(LogWARN, "exec() of %s failed: %s\n",
              arg->argc > arg->argn ? arg->argv[arg->argn] : shell,
              strerror(errno));
    _exit(255);
  }

  if (shpid == (pid_t)-1)
    log_Printf(LogERROR, "Fork failed: %s\n", strerror(errno));
  else {
    int status;
    waitpid(shpid, &status, 0);
  }

  if (arg->prompt && !arg->prompt->owner)
    prompt_TtyCommandMode(arg->prompt);

  return 0;
}

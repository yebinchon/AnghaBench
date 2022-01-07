
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIG_DFL ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_BSHELL ;
 int _PATH_DEVNULL ;
 int _exit (int) ;
 int alarm (int ) ;
 int close (int) ;
 int closefrom (int ) ;
 int dup2 (int,int ) ;
 int execvp (int ,char**) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ fork () ;
 int logerror (char*) ;
 int open (int ,int ) ;
 int pipe (int*) ;
 int setsid () ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
p_open(const char *prog, pid_t *rpid)
{
 int pfd[2], nulldesc;
 pid_t pid;
 char *argv[4];
 char errmsg[200];

 if (pipe(pfd) == -1)
  return (-1);
 if ((nulldesc = open(_PATH_DEVNULL, O_RDWR)) == -1)

  return (-1);

 switch ((pid = fork())) {
 case -1:
  close(nulldesc);
  return (-1);

 case 0:
  (void)setsid();
  argv[0] = strdup("sh");
  argv[1] = strdup("-c");
  argv[2] = strdup(prog);
  argv[3] = ((void*)0);
  if (argv[0] == ((void*)0) || argv[1] == ((void*)0) || argv[2] == ((void*)0)) {
   logerror("strdup");
   exit(1);
  }

  alarm(0);


  (void)signal(SIGINT, SIG_DFL);
  (void)signal(SIGQUIT, SIG_DFL);
  (void)signal(SIGPIPE, SIG_DFL);

  dup2(pfd[0], STDIN_FILENO);
  dup2(nulldesc, STDOUT_FILENO);
  dup2(nulldesc, STDERR_FILENO);
  closefrom(STDERR_FILENO + 1);

  (void)execvp(_PATH_BSHELL, argv);
  _exit(255);
 }
 close(nulldesc);
 close(pfd[0]);
 if (fcntl(pfd[1], F_SETFL, O_NONBLOCK) == -1) {

  (void)snprintf(errmsg, sizeof errmsg,
          "Warning: cannot change pipe to PID %d to "
          "non-blocking behaviour.",
          (int)pid);
  logerror(errmsg);
 }
 *rpid = pid;
 return (pfd[1]);
}

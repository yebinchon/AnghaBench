
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int SIGCHLD ;
 int SIGTERM ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int kill (scalar_t__,int ) ;
 scalar_t__ signal (int ,int ) ;
 int sleep (int) ;
 int tcp_client (scalar_t__,int) ;
 int tcp_server (scalar_t__) ;

int
main(int argc, char *argv[])
{
 pid_t child_pid, parent_pid;

 if (signal(SIGCHLD, SIG_IGN) == SIG_ERR)
  err(-1, "signal");

 parent_pid = getpid();
 child_pid = fork();
 if (child_pid < 0)
  err(-1, "fork");
 if (child_pid == 0) {
  child_pid = getpid();
  tcp_server(parent_pid);
  return (0);
 } else
  tcp_client(child_pid, 0);
 (void)kill(child_pid, SIGTERM);

 sleep(5);

 parent_pid = getpid();
 child_pid = fork();
 if (child_pid < 0)
  err(-1, "fork");
 if (child_pid == 0) {
  child_pid = getpid();
  tcp_server(parent_pid);
  return (0);
 } else
  tcp_client(child_pid, 1);
 (void)kill(child_pid, SIGTERM);

 return (0);
}

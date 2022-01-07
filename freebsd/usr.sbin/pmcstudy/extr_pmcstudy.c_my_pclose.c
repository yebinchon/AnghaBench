
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int pid_t ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int SIGTERM ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int kill (int,int ) ;
 int wait4 (int,int*,int ,struct rusage*) ;

__attribute__((used)) static void
my_pclose(FILE *io, pid_t the_pid)
{
 int pstat;
 pid_t pid;




 (void)fclose(io);

 kill(the_pid, SIGTERM);
 do {
  pid = wait4(the_pid, &pstat, 0, (struct rusage *)0);
 } while (pid == -1 && errno == EINTR);
}

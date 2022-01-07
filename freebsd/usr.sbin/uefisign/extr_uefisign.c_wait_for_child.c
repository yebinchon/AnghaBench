
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int WEXITSTATUS (int) ;
 int err (int,char*) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int
wait_for_child(pid_t pid)
{
 int status;

 pid = waitpid(pid, &status, 0);
 if (pid == -1)
  err(1, "waitpid");

 return (WEXITSTATUS(status));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {char* t_name; int (* t_run ) () ;} ;
typedef scalar_t__ pid_t ;


 int FAILED ;
 int PASSED ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int printf (char*,char*,int,char*) ;
 int stub1 () ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
execute(int id, struct test *t) {
 int result;

 pid_t pid = fork();
 if (pid < 0)
  err(-1, "fork");
 if (pid) {

  int status;
  while (waitpid(pid, &status, 0) != pid) {}
  if (WIFEXITED(status))
   result = WEXITSTATUS(status);
  else
   result = FAILED;
 } else {

  exit(t->t_run());
 }

 printf("%s %d - %s\n",
  (result == PASSED) ? "ok" : "not ok",
  id, t->t_name);

 return (result);
}

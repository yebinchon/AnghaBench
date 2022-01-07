
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 scalar_t__ child ;
 int done (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void
finish(void)
{
 int e, status;

 if (waitpid(child, &status, 0) == child) {
  if (WIFEXITED(status))
   e = WEXITSTATUS(status);
  else if (WIFSIGNALED(status))
   e = WTERMSIG(status);
  else
   e = 1;
  done(e);
 }
}

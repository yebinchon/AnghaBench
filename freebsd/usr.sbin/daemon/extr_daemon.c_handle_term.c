
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_gone ;
 int kill (scalar_t__,int) ;
 scalar_t__ pid ;
 int terminate ;

__attribute__((used)) static void
handle_term(int signo)
{
 if (pid > 0 && !child_gone)
  kill(pid, signo);
 terminate = 1;
}

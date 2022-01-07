
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WNOHANG ;
 scalar_t__ waitpid (int,int*,int ) ;

void
wait_child(void)
{
 int status;
 while (waitpid(-1, &status, WNOHANG) > 0)
  ;
}

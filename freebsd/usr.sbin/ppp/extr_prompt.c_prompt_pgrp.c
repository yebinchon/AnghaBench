
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int fd_in; } ;
typedef int pid_t ;


 int tcgetpgrp (int ) ;

pid_t
prompt_pgrp(struct prompt *p)
{
  return tcgetpgrp(p->fd_in);
}

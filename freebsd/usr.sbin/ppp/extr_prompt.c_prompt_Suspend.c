
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;


 scalar_t__ getpgrp () ;
 int log_DeactivatePrompt (struct prompt*) ;
 int prompt_TtyOldMode (struct prompt*) ;
 scalar_t__ prompt_pgrp (struct prompt*) ;

void
prompt_Suspend(struct prompt *p)
{
  if (getpgrp() == prompt_pgrp(p)) {
    prompt_TtyOldMode(p);
    log_DeactivatePrompt(p);
  }
}

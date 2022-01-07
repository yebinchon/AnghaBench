
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {scalar_t__ active; } ;


 int LogSetMaskLocal () ;

void
log_DeactivatePrompt(struct prompt *prompt)
{
  if (prompt->active) {
    prompt->active = 0;
    LogSetMaskLocal();
  }
}

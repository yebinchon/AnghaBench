
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int active; int logmask; } ;


 int LogMaskLocal ;

void
log_ActivatePrompt(struct prompt *prompt)
{
  prompt->active = 1;
  LogMaskLocal |= prompt->logmask;
}

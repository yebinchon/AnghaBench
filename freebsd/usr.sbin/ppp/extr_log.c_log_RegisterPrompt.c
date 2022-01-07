
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int active; int logmask; struct prompt* next; } ;


 int log_DiscardAllLocal (int *) ;
 struct prompt* promptlist ;

void
log_RegisterPrompt(struct prompt *prompt)
{
  prompt->next = promptlist;
  promptlist = prompt;
  prompt->active = 1;
  log_DiscardAllLocal(&prompt->logmask);
}

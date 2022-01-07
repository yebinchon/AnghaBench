
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {struct prompt* next; } ;


 int LogSetMaskLocal () ;
 int log_PromptListChanged ;
 struct prompt* promptlist ;

void
log_UnRegisterPrompt(struct prompt *prompt)
{
  if (prompt) {
    struct prompt **p;

    for (p = &promptlist; *p; p = &(*p)->next)
      if (*p == prompt) {
        *p = prompt->next;
        prompt->next = ((void*)0);
        break;
      }
    LogSetMaskLocal();
    log_PromptListChanged++;
  }
}

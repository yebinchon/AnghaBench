
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {struct prompt* next; } ;
struct datalink {int dummy; } ;


 scalar_t__ prompt_IsTermMode (struct prompt*,struct datalink*) ;
 int prompt_TtyCommandMode (struct prompt*) ;
 struct prompt* promptlist ;

void
log_SetTtyCommandMode(struct datalink *dl)
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next)
    if (prompt_IsTermMode(p, dl))
      prompt_TtyCommandMode(p);
}

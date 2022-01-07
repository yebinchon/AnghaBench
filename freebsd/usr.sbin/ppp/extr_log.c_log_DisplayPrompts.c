
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {struct prompt* next; } ;


 int prompt_Required (struct prompt*) ;
 struct prompt* promptlist ;

void
log_DisplayPrompts()
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next)
    prompt_Required(p);
}

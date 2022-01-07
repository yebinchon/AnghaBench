
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server {int dummy; } ;
struct prompt {struct prompt* next; struct server* owner; } ;


 int prompt_Destroy (struct prompt*,int) ;
 struct prompt* promptlist ;

void
log_DestroyPrompts(struct server *s)
{
  struct prompt *p, *pn, *pl;

  p = promptlist;
  pl = ((void*)0);
  while (p) {
    pn = p->next;
    if (s && p->owner == s) {
      if (pl)
        pl->next = p->next;
      else
        promptlist = p->next;
      p->next = ((void*)0);
      prompt_Destroy(p, 1);
    } else
      pl = p;
    p = pn;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apmhook {scalar_t__ ah_order; struct apmhook* ah_next; int ah_name; } ;


 int APM_DPRINT (char*,int ) ;
 int panic (char*) ;

__attribute__((used)) static struct apmhook *
apm_add_hook(struct apmhook **list, struct apmhook *ah)
{
 struct apmhook *p, *prev;

 APM_DPRINT("Add hook \"%s\"\n", ah->ah_name);

 if (ah == ((void*)0))
  panic("illegal apm_hook!");
 prev = ((void*)0);
 for (p = *list; p != ((void*)0); prev = p, p = p->ah_next)
  if (p->ah_order > ah->ah_order)
   break;

 if (prev == ((void*)0)) {
  ah->ah_next = *list;
  *list = ah;
 } else {
  ah->ah_next = prev->ah_next;
  prev->ah_next = ah;
 }
 return ah;
}

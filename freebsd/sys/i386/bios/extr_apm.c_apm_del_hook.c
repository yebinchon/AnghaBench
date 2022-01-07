
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apmhook {struct apmhook* ah_next; } ;


 int panic (char*) ;

__attribute__((used)) static void
apm_del_hook(struct apmhook **list, struct apmhook *ah)
{
 struct apmhook *p, *prev;

 prev = ((void*)0);
 for (p = *list; p != ((void*)0); prev = p, p = p->ah_next)
  if (p == ah)
   goto deleteit;
 panic("Tried to delete unregistered apm_hook.");
 return;
deleteit:
 if (prev != ((void*)0))
  prev->ah_next = p->ah_next;
 else
  *list = p->ah_next;
}

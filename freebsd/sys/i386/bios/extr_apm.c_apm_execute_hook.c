
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apmhook {char* ah_name; int ah_arg; scalar_t__ (* ah_fun ) (int ) ;struct apmhook* ah_next; } ;


 int APM_DPRINT (char*,char*) ;
 int printf (char*,char*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void
apm_execute_hook(struct apmhook *list)
{
 struct apmhook *p;

 for (p = list; p != ((void*)0); p = p->ah_next) {
  APM_DPRINT("Execute APM hook \"%s.\"\n", p->ah_name);
  if ((*(p->ah_fun))(p->ah_arg))
   printf("Warning: APM hook \"%s\" failed", p->ah_name);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int name; int goterror; } ;
typedef TYPE_1__ prog_t ;


 int infilename ;
 TYPE_1__* progs ;
 int warnx (char*,int ,int ) ;

void
remove_error_progs(void)
{
 prog_t *p1, *p2;

 p1 = ((void*)0); p2 = progs;
 while (p2 != ((void*)0)) {
  if (!p2->goterror)
   p1 = p2, p2 = p2->next;
  else {

   warnx("%s: %s: ignoring program because of errors",
       infilename, p2->name);
   if (p1)
    p1->next = p2->next;
   else
    progs = p2->next;
   p2 = p2->next;
  }
 }
}

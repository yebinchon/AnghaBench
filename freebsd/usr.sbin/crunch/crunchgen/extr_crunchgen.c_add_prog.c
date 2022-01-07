
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ goterror; int * buildopts; int * keeplist; int * objs; int * libs_so; int * libs; int * links; int * objdir; int * realsrcdir; int * srcdir; int * ident; struct TYPE_5__* next; int name; } ;
typedef TYPE_1__ prog_t ;


 scalar_t__ list_mode ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int out_of_memory () ;
 int printf (char*,char*) ;
 TYPE_1__* progs ;
 int strcmp (int ,char*) ;
 int strdup (char*) ;

void
add_prog(char *progname)
{
 prog_t *p1, *p2;



 for (p1 = ((void*)0), p2 = progs; p2 != ((void*)0); p1 = p2, p2 = p2->next)
  if (!strcmp(p2->name, progname))
   return;

 p2 = malloc(sizeof(prog_t));
 if(p2) {
  memset(p2, 0, sizeof(prog_t));
  p2->name = strdup(progname);
 }
 if (!p2 || !p2->name)
  out_of_memory();

 p2->next = ((void*)0);
 if (p1 == ((void*)0))
  progs = p2;
 else
  p1->next = p2;

 p2->ident = ((void*)0);
 p2->srcdir = ((void*)0);
 p2->realsrcdir = ((void*)0);
 p2->objdir = ((void*)0);
 p2->links = ((void*)0);
 p2->libs = ((void*)0);
 p2->libs_so = ((void*)0);
 p2->objs = ((void*)0);
 p2->keeplist = ((void*)0);
 p2->buildopts = ((void*)0);
 p2->goterror = 0;

 if (list_mode)
  printf("%s\n",progname);
}

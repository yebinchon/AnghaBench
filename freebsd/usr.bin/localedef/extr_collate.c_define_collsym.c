
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; int ref; } ;
typedef TYPE_1__ collsym_t ;


 int INTERR ;
 int * RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int collsyms ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__*) ;
 int new_pri () ;
 int stderr ;

void
define_collsym(char *name)
{
 collsym_t *sym;

 if ((sym = calloc(1, sizeof(*sym))) == ((void*)0)) {
  fprintf(stderr,"out of memory");
  return;
 }
 sym->name = name;
 sym->ref = new_pri();

 if (RB_FIND(collsyms, &collsyms, sym) != ((void*)0)) {




  free(sym);
  INTERR;
  return;
 }
 RB_INSERT(collsyms, &collsyms, sym);
}

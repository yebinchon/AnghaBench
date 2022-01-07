
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* name; int * ref; } ;
typedef TYPE_1__ collundef_t ;


 int NUM_WT ;
 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 int add_charmap_undefined (char*) ;
 TYPE_1__* calloc (int,int) ;
 int collundefs ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__*) ;
 int new_pri () ;
 int stderr ;
 char* strdup (char*) ;

__attribute__((used)) static collundef_t *
get_collundef(char *name)
{
 collundef_t srch;
 collundef_t *ud;
 int i;

 srch.name = name;
 if ((ud = RB_FIND(collundefs, &collundefs, &srch)) == ((void*)0)) {
  if (((ud = calloc(1, sizeof(*ud))) == ((void*)0)) ||
      ((ud->name = strdup(name)) == ((void*)0))) {
   fprintf(stderr,"out of memory");
   free(ud);
   return (((void*)0));
  }
  for (i = 0; i < NUM_WT; i++) {
   ud->ref[i] = new_pri();
  }
  RB_INSERT(collundefs, &collundefs, ud);
 }
 add_charmap_undefined(name);
 return (ud);
}

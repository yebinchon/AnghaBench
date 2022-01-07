
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct s_command* c; } ;
struct s_command {int code; struct s_command* next; TYPE_1__ u; int * t; } ;


 int appendnum ;
 int errx (int,char*,int ,int ,int *) ;
 struct s_command* findlabel (int *) ;
 int fname ;
 int free (int *) ;
 int linenum ;

__attribute__((used)) static void
fixuplabel(struct s_command *cp, struct s_command *end)
{

 for (; cp != end; cp = cp->next)
  switch (cp->code) {
  case 'a':
  case 'r':
   appendnum++;
   break;
  case 'b':
  case 't':

   if (cp->t == ((void*)0)) {
    cp->u.c = ((void*)0);
    break;
   }
   if ((cp->u.c = findlabel(cp->t)) == ((void*)0))
    errx(1, "%lu: %s: undefined label '%s'", linenum, fname, cp->t);
   free(cp->t);
   break;
  case '{':

   fixuplabel(cp->u.c, cp->next);
   break;
  }
}

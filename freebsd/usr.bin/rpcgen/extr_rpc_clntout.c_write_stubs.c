
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ val; struct TYPE_5__* next; } ;
typedef TYPE_1__ list ;
struct TYPE_6__ {scalar_t__ def_kind; } ;
typedef TYPE_2__ definition ;


 int DEFAULT_TIMEOUT ;
 scalar_t__ DEF_PROGRAM ;
 TYPE_1__* defined ;
 int f_print (int ,char*,...) ;
 int fout ;
 int write_program (TYPE_2__*) ;

void
write_stubs(void)
{
 list *l;
 definition *def;

 f_print(fout,
  "\n/* Default timeout can be changed using clnt_control() */\n");
 f_print(fout, "static struct timeval TIMEOUT = { %d, 0 };\n",
  DEFAULT_TIMEOUT);
 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind == DEF_PROGRAM) {
   write_program(def);
  }
 }
}

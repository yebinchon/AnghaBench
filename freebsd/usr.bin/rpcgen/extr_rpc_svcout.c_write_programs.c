
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ val; struct TYPE_6__* next; } ;
typedef TYPE_1__ list ;
struct TYPE_7__ {scalar_t__ def_kind; } ;
typedef TYPE_2__ definition ;


 scalar_t__ DEF_PROGRAM ;
 TYPE_1__* defined ;
 int write_program (TYPE_2__*,char const*) ;
 int write_real_program (TYPE_2__*) ;

void
write_programs(const char *storage)
{
 list *l;
 definition *def;


 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind == DEF_PROGRAM) {
   write_real_program(def);
  }
 }


 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind == DEF_PROGRAM) {
   write_program(def, storage);
  }
 }


}

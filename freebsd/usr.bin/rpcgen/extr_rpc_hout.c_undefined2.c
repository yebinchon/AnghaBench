
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; struct TYPE_4__* next; } ;
typedef TYPE_1__ list ;
struct TYPE_5__ {scalar_t__ def_kind; int def_name; } ;
typedef TYPE_2__ definition ;


 scalar_t__ DEF_PROGRAM ;
 TYPE_1__* defined ;
 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) static int
undefined2(const char *type, const char *stop)
{
 list *l;
 definition *def;

 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind != DEF_PROGRAM) {
   if (streq(def->def_name, stop)) {
    return (1);
   } else if (streq(def->def_name, type)) {
    return (0);
   }
  }
 }
 return (1);
}

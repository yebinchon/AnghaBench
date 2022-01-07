
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ def_kind; int def_name; } ;
typedef TYPE_1__ definition ;


 scalar_t__ DEF_CONST ;
 scalar_t__ DEF_PROGRAM ;
 int streq (int ,char const*) ;

__attribute__((used)) static int
findtype(definition *def, const char *type)
{

 if (def->def_kind == DEF_PROGRAM || def->def_kind == DEF_CONST) {
  return (0);
 } else {
  return (streq(def->def_name, type));
 }
}

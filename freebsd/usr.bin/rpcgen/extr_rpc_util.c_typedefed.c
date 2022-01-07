
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * old_prefix; } ;
struct TYPE_6__ {TYPE_1__ ty; } ;
struct TYPE_7__ {scalar_t__ def_kind; int def_name; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;


 scalar_t__ DEF_TYPEDEF ;
 int streq (int ,char const*) ;

__attribute__((used)) static int
typedefed(definition *def, const char *type)
{
 if (def->def_kind != DEF_TYPEDEF || def->def.ty.old_prefix != ((void*)0)) {
  return (0);
 } else {
  return (streq(def->def_name, type));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rel; char* old_type; } ;
struct TYPE_5__ {TYPE_1__ ty; } ;
struct TYPE_6__ {scalar_t__ def_kind; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;


 scalar_t__ DEF_TYPEDEF ;
 scalar_t__ FINDVAL (int ,char const*,int ) ;


 int defined ;
 int findit ;
 int streq (char*,char*) ;

__attribute__((used)) static const char *
fixit(const char *type, const char *orig)
{
 definition *def;

 def = (definition *) FINDVAL(defined, type, findit);
 if (def == ((void*)0) || def->def_kind != DEF_TYPEDEF) {
  return (orig);
 }
 switch (def->def.ty.rel) {
 case 128:
  if (streq(def->def.ty.old_type, "opaque"))
   return ("char");
  else
   return (def->def.ty.old_type);

 case 129:
  return (fixit(def->def.ty.old_type, orig));
 default:
  return (orig);
 }
}

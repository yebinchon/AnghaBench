
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int relation ;
struct TYPE_4__ {char* old_type; int rel; } ;
struct TYPE_5__ {TYPE_1__ ty; } ;
struct TYPE_6__ {TYPE_2__ def; } ;
typedef TYPE_3__ definition ;


 scalar_t__ FINDVAL (int ,char const*,int ) ;




 int defined ;
 int streq (char const*,char*) ;
 int typedefed ;

int
isvectordef(const char *type, relation rel)
{
 definition *def;

 for (;;) {
  switch (rel) {
  case 128:
   return (!streq(type, "string"));
  case 130:
   return (0);
  case 129:
   return (0);
  case 131:
   def = (definition *) FINDVAL(defined, type, typedefed);
   if (def == ((void*)0)) {
    return (0);
   }
   type = def->def.ty.old_type;
   rel = def->def.ty.rel;
  }
 }

 return (0);
}

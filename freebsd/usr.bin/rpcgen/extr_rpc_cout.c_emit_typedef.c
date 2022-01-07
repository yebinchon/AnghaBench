
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int relation ;
struct TYPE_6__ {char* old_prefix; char* old_type; char* array_max; int rel; } ;
struct TYPE_5__ {TYPE_2__ ty; } ;
struct TYPE_7__ {int def_name; TYPE_1__ def; } ;
typedef TYPE_3__ definition ;


 int print_ifstat (int,char const*,char const*,int ,char const*,char*,int ) ;

__attribute__((used)) static void
emit_typedef(definition *def)
{
 const char *prefix = def->def.ty.old_prefix;
 const char *type = def->def.ty.old_type;
 const char *amax = def->def.ty.array_max;
 relation rel = def->def.ty.rel;

 print_ifstat(1, prefix, type, rel, amax, "objp", def->def_name);
}

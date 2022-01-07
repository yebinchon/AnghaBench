
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int array_max; int rel; int old_type; int old_prefix; } ;
struct TYPE_8__ {TYPE_1__ ty; } ;
struct TYPE_9__ {TYPE_2__ def; int def_name; int def_kind; } ;
typedef TYPE_3__ definition ;
struct TYPE_10__ {int array_max; int rel; int type; int prefix; int name; } ;
typedef TYPE_4__ declaration ;


 int DEF_TYPEDEF ;
 int check_type_name (int ,int) ;
 int get_declaration (TYPE_4__*,int ) ;

__attribute__((used)) static void
def_typedef(definition *defp)
{
 declaration dec;

 defp->def_kind = DEF_TYPEDEF;
 get_declaration(&dec, DEF_TYPEDEF);
 defp->def_name = dec.name;
 check_type_name(dec.name, 1);
 defp->def.ty.old_prefix = dec.prefix;
 defp->def.ty.old_type = dec.type;
 defp->def.ty.rel = dec.rel;
 defp->def.ty.array_max = dec.array_max;
}

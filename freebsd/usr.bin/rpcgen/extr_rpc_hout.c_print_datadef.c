
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int rel; int old_type; } ;
struct TYPE_12__ {TYPE_1__ ty; } ;
struct TYPE_13__ {int def_kind; TYPE_2__ def; int def_name; } ;
typedef TYPE_3__ definition ;
 int f_print (int ,char*) ;
 int fout ;
 int isvectordef (int ,int ) ;
 int pconstdef (TYPE_3__*) ;
 int penumdef (TYPE_3__*) ;
 int pprogramdef (TYPE_3__*,int) ;
 int pstructdef (TYPE_3__*) ;
 int ptypedef (TYPE_3__*) ;
 int puniondef (TYPE_3__*) ;
 int storexdrfuncdecl (int ,int) ;

void
print_datadef(definition *def, int headeronly)
{

 if (def->def_kind == 131)
  return;

 if (def->def_kind != 133) {
  f_print(fout, "\n");
 }
 switch (def->def_kind) {
 case 130:
  pstructdef(def);
  break;
 case 128:
  puniondef(def);
  break;
 case 132:
  penumdef(def);
  break;
 case 129:
  ptypedef(def);
  break;
 case 131:
  pprogramdef(def, headeronly);
  break;
 case 133:
  pconstdef(def);
  break;
 }
 if (def->def_kind != 131 && def->def_kind != 133) {
     storexdrfuncdecl(def->def_name,
        def->def_kind != 129 ||
        !isvectordef(def->def.ty.old_type,
       def->def.ty.rel));
 }
}

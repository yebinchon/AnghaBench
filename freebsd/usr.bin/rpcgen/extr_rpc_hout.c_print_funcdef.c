
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int def_kind; } ;
typedef TYPE_1__ definition ;



 int f_print (int ,char*) ;
 int fout ;
 int pprogramdef (TYPE_1__*,int) ;

void
print_funcdef(definition *def, int headeronly)
{
 switch (def->def_kind) {
 case 128:
  f_print(fout, "\n");
  pprogramdef(def, headeronly);
  break;
 default:
  break;
 }
}

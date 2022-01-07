
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int phandle_t ;
struct TYPE_3__ {int bias; int name; } ;


 scalar_t__ OF_hasprop (int ,int ) ;
 int OF_node_from_xref (int ) ;
 TYPE_1__* jx4780_bias_table ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static int
jz4780_pinctrl_parse_pincfg(phandle_t pincfgxref, uint32_t *bias_value)
{
 phandle_t pincfg_node;
 int i;

 pincfg_node = OF_node_from_xref(pincfgxref);
 for (i = 0; i < nitems(jx4780_bias_table); i++) {
  if (OF_hasprop(pincfg_node, jx4780_bias_table[i].name)) {
   *bias_value = jx4780_bias_table[i].bias;
   return 0;
  }
 }

 return -1;
}

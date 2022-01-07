
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct clknode_div_sc {int div_flags; scalar_t__ divider; struct clk_div_table* div_table; } ;
struct clk_div_table {scalar_t__ divider; scalar_t__ value; } ;


 int CLK_DIV_WITH_TABLE ;

__attribute__((used)) static uint32_t
clknode_div_table_get_divider(struct clknode_div_sc *sc, uint32_t divider)
{
 struct clk_div_table *table;

 if (!(sc->div_flags & CLK_DIV_WITH_TABLE))
  return (divider);

 for (table = sc->div_table; table->divider != 0; table++)
  if (table->value == sc->divider)
   return (table->divider);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct clknode {scalar_t__ parent_cnt; char* name; int freq; struct clknode* parent; } ;


 int CLKNODE_RECALC_FREQ (struct clknode*,int *) ;
 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLKNODE_XLOCK (struct clknode*) ;
 int CLK_TOPO_ASSERT () ;
 int printf (char*,char*,int) ;

int
clknode_get_freq(struct clknode *clknode, uint64_t *freq)
{
 int rv;

 CLK_TOPO_ASSERT();


 *freq = clknode->freq;
 if (*freq != 0)
  return (0);


 if (clknode->parent_cnt > 0) {
  rv = clknode_get_freq(clknode->parent, freq);
  if (rv != 0) {
   return (rv);
  }
 }


 CLKNODE_XLOCK(clknode);
 rv = CLKNODE_RECALC_FREQ(clknode, freq);
 if (rv != 0) {
  CLKNODE_UNLOCK(clknode);
  printf("Cannot get frequency for clk: %s, error: %d\n",
      clknode->name, rv);
  return (rv);
 }


 clknode->freq = *freq;
 CLKNODE_UNLOCK(clknode);
 return (0);
}

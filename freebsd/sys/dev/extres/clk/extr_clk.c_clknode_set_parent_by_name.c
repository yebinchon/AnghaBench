
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct clknode {int parent_cnt; int parent_idx; struct clknode* parent; int ** parent_names; } ;


 int CLKNODE_SET_MUX (struct clknode*,int) ;
 int CLKNODE_UNLOCK (struct clknode*) ;
 int CLK_TOPO_XASSERT () ;
 int ENXIO ;
 int clknode_adjust_parent (struct clknode*,int) ;
 int clknode_get_freq (struct clknode*,int *) ;
 int clknode_refresh_cache (struct clknode*,int ) ;
 scalar_t__ strcmp (int *,char const*) ;

int
clknode_set_parent_by_name(struct clknode *clknode, const char *name)
{
 int rv;
 uint64_t freq;
 int oldidx, idx;


 CLK_TOPO_XASSERT();

 if (clknode->parent_cnt == 0)
  return (0);







 if (clknode->parent_cnt == 1) {
  rv = clknode_set_parent_by_name(clknode->parent, name);
  return (rv);
 }

 for (idx = 0; idx < clknode->parent_cnt; idx++) {
  if (clknode->parent_names[idx] == ((void*)0))
   continue;
  if (strcmp(clknode->parent_names[idx], name) == 0)
   break;
 }
 if (idx >= clknode->parent_cnt) {
  return (ENXIO);
 }
 if (clknode->parent_idx == idx)
  return (0);

 oldidx = clknode->parent_idx;
 clknode_adjust_parent(clknode, idx);
 rv = CLKNODE_SET_MUX(clknode, idx);
 if (rv != 0) {
  clknode_adjust_parent(clknode, oldidx);
  CLKNODE_UNLOCK(clknode);
  return (rv);
 }
 rv = clknode_get_freq(clknode->parent, &freq);
 if (rv != 0)
  return (rv);
 rv = clknode_refresh_cache(clknode, freq);
 return (rv);
}

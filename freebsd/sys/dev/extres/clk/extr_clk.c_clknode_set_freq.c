
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct clknode {int enable_cnt; int flags; scalar_t__ parent_cnt; char* name; struct clknode* parent; scalar_t__ freq; } ;


 int CLKNODE_SET_FREQ (struct clknode*,scalar_t__,scalar_t__*,int,int*) ;
 int CLK_NODE_GLITCH_FREE ;
 int CLK_SET_DRYRUN ;
 int CLK_TOPO_XASSERT () ;
 int EBUSY ;
 int ENXIO ;
 int clknode_get_freq (struct clknode*,scalar_t__*) ;
 int clknode_refresh_cache (struct clknode*,scalar_t__) ;
 int printf (char*,char*,...) ;

int
clknode_set_freq(struct clknode *clknode, uint64_t freq, int flags,
    int enablecnt)
{
 int rv, done;
 uint64_t parent_freq;


 CLK_TOPO_XASSERT();


 if (clknode->freq == freq)
  return (0);

 parent_freq = 0;







 if ((flags & CLK_SET_DRYRUN) == 0 &&
     clknode->enable_cnt > 1 &&
     clknode->enable_cnt > enablecnt &&
     (clknode->flags & CLK_NODE_GLITCH_FREE) == 0) {
  return (EBUSY);
 }


 if (clknode->parent_cnt > 0) {
  rv = clknode_get_freq(clknode->parent, &parent_freq);
  if (rv != 0) {
   return (rv);
  }
 }


 rv = CLKNODE_SET_FREQ(clknode, parent_freq, &freq, flags, &done);
 if (rv != 0) {
  printf("Cannot set frequency for clk: %s, error: %d\n",
      clknode->name, rv);
  if ((flags & CLK_SET_DRYRUN) == 0)
   clknode_refresh_cache(clknode, parent_freq);
  return (rv);
 }

 if (done) {

  if ((flags & CLK_SET_DRYRUN) == 0) {
   clknode->freq = freq;

   if (clknode->parent_cnt > 0) {
    rv = clknode_get_freq(clknode->parent,
        &parent_freq);
    if (rv != 0) {
     return (rv);
    }
   }
   clknode_refresh_cache(clknode, parent_freq);
  }
 } else if (clknode->parent != ((void*)0)) {

  rv = clknode_set_freq(clknode->parent, freq, flags, enablecnt);
 } else {

  printf("Cannot set frequency for clk: %s, end of chain\n",
      clknode->name);
  rv = ENXIO;
 }

 return (rv);
}

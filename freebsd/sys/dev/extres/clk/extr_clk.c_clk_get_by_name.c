
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int dummy; } ;
typedef int device_t ;
typedef int clk_t ;


 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int ENODEV ;
 int clk_create (struct clknode*,int ) ;
 struct clknode* clknode_find_by_name (char const*) ;

int
clk_get_by_name(device_t dev, const char *name, clk_t *clk)
{
 struct clknode *clknode;

 CLK_TOPO_SLOCK();
 clknode = clknode_find_by_name(name);
 if (clknode == ((void*)0)) {
  CLK_TOPO_UNLOCK();
  return (ENODEV);
 }
 *clk = clk_create(clknode, dev);
 CLK_TOPO_UNLOCK();
 return (0);
}

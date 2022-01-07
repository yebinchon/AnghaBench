
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int ref_cnt; } ;
struct clk {scalar_t__ enable_cnt; struct clknode* clknode; int dev; } ;
typedef int device_t ;
typedef struct clk* clk_t ;


 int CLK_TOPO_ASSERT () ;
 int M_CLOCK ;
 int M_WAITOK ;
 struct clk* malloc (int,int ,int ) ;

__attribute__((used)) static clk_t
clk_create(struct clknode *clknode, device_t dev)
{
 struct clk *clk;

 CLK_TOPO_ASSERT();

 clk = malloc(sizeof(struct clk), M_CLOCK, M_WAITOK);
 clk->dev = dev;
 clk->clknode = clknode;
 clk->enable_cnt = 0;
 clknode->ref_cnt++;

 return (clk);
}

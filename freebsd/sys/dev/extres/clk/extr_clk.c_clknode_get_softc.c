
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {void* softc; } ;



void *
clknode_get_softc(struct clknode *clknode)
{

 return (clknode->softc);
}

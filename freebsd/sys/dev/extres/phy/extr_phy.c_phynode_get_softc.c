
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {void* softc; } ;



void *
phynode_get_softc(struct phynode *phynode)
{

 return (phynode->softc);
}

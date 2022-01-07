
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;


 int PHYNODE_STATUS (struct phynode*,int*) ;
 int PHYNODE_UNLOCK (struct phynode*) ;
 int PHYNODE_XLOCK (struct phynode*) ;
 int PHY_TOPO_ASSERT () ;

int
phynode_status(struct phynode *phynode, int *status)
{
 int rv;

 PHY_TOPO_ASSERT();

 PHYNODE_XLOCK(phynode);
 rv = PHYNODE_STATUS(phynode, status);
 PHYNODE_UNLOCK(phynode);
 return (rv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int enable_cnt; } ;


 int PHYNODE_ENABLE (struct phynode*,int) ;
 int PHYNODE_UNLOCK (struct phynode*) ;
 int PHYNODE_XLOCK (struct phynode*) ;
 int PHY_TOPO_ASSERT () ;

int
phynode_disable(struct phynode *phynode)
{
 int rv;

 PHY_TOPO_ASSERT();

 PHYNODE_XLOCK(phynode);
 if (phynode->enable_cnt == 1) {
  rv = PHYNODE_ENABLE(phynode, 0);
  if (rv != 0) {
   PHYNODE_UNLOCK(phynode);
   return (rv);
  }
 }
 phynode->enable_cnt--;
 PHYNODE_UNLOCK(phynode);
 return (0);
}

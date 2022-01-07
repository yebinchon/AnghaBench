
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct phynode {scalar_t__ ref_cnt; } ;
typedef TYPE_1__* phy_t ;
struct TYPE_3__ {int enable_cnt; struct phynode* phynode; } ;


 int KASSERT (int,char*) ;
 int PHY_TOPO_SLOCK () ;
 int PHY_TOPO_UNLOCK () ;
 int phynode_enable (struct phynode*) ;

int
phy_enable(phy_t phy)
{
 int rv;
 struct phynode *phynode;

 phynode = phy->phynode;
 KASSERT(phynode->ref_cnt > 0,
     ("Attempt to access unreferenced phy.\n"));

 PHY_TOPO_SLOCK();
 rv = phynode_enable(phynode);
 if (rv == 0)
  phy->enable_cnt++;
 PHY_TOPO_UNLOCK();
 return (rv);
}

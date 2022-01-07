
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct phynode {scalar_t__ ref_cnt; int consumers_list; } ;
typedef TYPE_1__* phy_t ;
struct TYPE_5__ {scalar_t__ enable_cnt; struct phynode* phynode; } ;


 int KASSERT (int,char*) ;
 int M_PHY ;
 int PHYNODE_UNLOCK (struct phynode*) ;
 int PHYNODE_XLOCK (struct phynode*) ;
 int PHY_TOPO_SLOCK () ;
 int PHY_TOPO_UNLOCK () ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*,int ) ;
 int link ;
 int phynode_disable (struct phynode*) ;

void
phy_release(phy_t phy)
{
 struct phynode *phynode;

 phynode = phy->phynode;
 KASSERT(phynode->ref_cnt > 0,
    ("Attempt to access unreferenced phy.\n"));

 PHY_TOPO_SLOCK();
 while (phy->enable_cnt > 0) {
  phynode_disable(phynode);
  phy->enable_cnt--;
 }
 PHYNODE_XLOCK(phynode);
 TAILQ_REMOVE(&phynode->consumers_list, phy, link);
 phynode->ref_cnt--;
 PHYNODE_UNLOCK(phynode);
 PHY_TOPO_UNLOCK();

 free(phy, M_PHY);
}

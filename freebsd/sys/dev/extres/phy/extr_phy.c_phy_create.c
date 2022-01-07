
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int consumers_list; int ref_cnt; } ;
struct phy {scalar_t__ enable_cnt; struct phynode* phynode; int cdev; } ;
typedef struct phy* phy_t ;
typedef int device_t ;


 int M_PHY ;
 int M_WAITOK ;
 int M_ZERO ;
 int PHYNODE_UNLOCK (struct phynode*) ;
 int PHYNODE_XLOCK (struct phynode*) ;
 int PHY_TOPO_ASSERT () ;
 int TAILQ_INSERT_TAIL (int *,struct phy*,int ) ;
 int link ;
 struct phy* malloc (int,int ,int) ;

__attribute__((used)) static phy_t
phy_create(struct phynode *phynode, device_t cdev)
{
 struct phy *phy;

 PHY_TOPO_ASSERT();

 phy = malloc(sizeof(struct phy), M_PHY, M_WAITOK | M_ZERO);
 phy->cdev = cdev;
 phy->phynode = phynode;
 phy->enable_cnt = 0;

 PHYNODE_XLOCK(phynode);
 phynode->ref_cnt++;
 TAILQ_INSERT_TAIL(&phynode->consumers_list, phy, link);
 PHYNODE_UNLOCK(phynode);

 return (phy);
}

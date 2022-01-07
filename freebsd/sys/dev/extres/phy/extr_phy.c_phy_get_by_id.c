
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;
typedef int phy_t ;
typedef int device_t ;


 int ENODEV ;
 int PHY_TOPO_SLOCK () ;
 int PHY_TOPO_UNLOCK () ;
 int phy_create (struct phynode*,int ) ;
 struct phynode* phynode_find_by_id (int ,intptr_t) ;

int
phy_get_by_id(device_t consumer_dev, device_t provider_dev, intptr_t id,
    phy_t *phy)
{
 struct phynode *phynode;

 PHY_TOPO_SLOCK();

 phynode = phynode_find_by_id(provider_dev, id);
 if (phynode == ((void*)0)) {
  PHY_TOPO_UNLOCK();
  return (ENODEV);
 }
 *phy = phy_create(phynode, consumer_dev);
 PHY_TOPO_UNLOCK();

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;


 int PHYNODE_UNLOCK (struct phynode*) ;
 int PHYNODE_USB_GET_MODE (struct phynode*,int*) ;
 int PHYNODE_XLOCK (struct phynode*) ;
 int PHY_TOPO_ASSERT () ;

int
phynode_usb_get_mode(struct phynode *phynode, int *usb_mode)
{
 int rv;

 PHY_TOPO_ASSERT();

 PHYNODE_XLOCK(phynode);
 rv = PHYNODE_USB_GET_MODE(phynode, usb_mode);
 PHYNODE_UNLOCK(phynode);
 return (rv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ifnet {int if_mtu; scalar_t__ if_softc; } ;
struct TYPE_3__ {int phy_id; int dev; } ;
typedef TYPE_1__ cvm_oct_private_t ;
struct TYPE_4__ {int board_type; } ;




 int ENXIO ;
 int ETHERMTU ;
 scalar_t__ cvm_assign_mac_address (int *,int *) ;
 int cvm_oct_common_change_mtu (struct ifnet*,int ) ;
 int cvm_oct_common_set_mac_address (struct ifnet*,int *) ;
 int cvm_oct_mdio_setup_device (struct ifnet*) ;
 int cvm_oct_mv88e61xx_setup_device (struct ifnet*) ;
 TYPE_2__* cvmx_sysinfo_get () ;
 int device_attach (int ) ;

int cvm_oct_common_init(struct ifnet *ifp)
{
 uint8_t mac[6];
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

 if (cvm_assign_mac_address(((void*)0), mac) != 0)
  return ENXIO;

 ifp->if_mtu = ETHERMTU;

 cvm_oct_mdio_setup_device(ifp);

 cvm_oct_common_set_mac_address(ifp, mac);
 cvm_oct_common_change_mtu(ifp, ifp->if_mtu);




 switch (cvmx_sysinfo_get()->board_type) {







 default:
  break;
 }

 device_attach(priv->dev);

 return 0;
}

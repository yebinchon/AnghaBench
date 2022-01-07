
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int * mdio_write; int * mdio_read; int * phy_device; int port; int phy_id; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int cvmx_helper_board_get_mii_address (int ) ;

int cvm_oct_mdio_setup_device(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

 priv->phy_id = cvmx_helper_board_get_mii_address(priv->port);
 priv->phy_device = ((void*)0);
 priv->mdio_read = ((void*)0);
 priv->mdio_write = ((void*)0);

 return 0;
}

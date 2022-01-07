
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {char* phy_device; int mdio_write; int mdio_read; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int cvm_oct_mv88e61xx_smi_read ;
 int cvm_oct_mv88e61xx_smi_write ;

int
cvm_oct_mv88e61xx_setup_device(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

 priv->mdio_read = cvm_oct_mv88e61xx_smi_read;
 priv->mdio_write = cvm_oct_mv88e61xx_smi_write;
 priv->phy_device = "mv88e61xxphy";

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int phy_id; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int ETIMEDOUT ;
 int MV88E61XX_SMI_CMD_BUSY ;
 int MV88E61XX_SMI_REG_CMD ;
 int cvm_oct_mdio_read (struct ifnet*,int ,int ) ;

__attribute__((used)) static int
cvm_oct_mv88e61xx_smi_wait(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 uint16_t cmd;
 unsigned i;

 for (i = 0; i < 10000; i++) {
  cmd = cvm_oct_mdio_read(ifp, priv->phy_id, MV88E61XX_SMI_REG_CMD);
  if ((cmd & MV88E61XX_SMI_CMD_BUSY) == 0)
   return (0);
 }
 return (ETIMEDOUT);
}

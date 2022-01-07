
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int phy_id; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int MV88E61XX_SMI_CMD_22 ;
 int MV88E61XX_SMI_CMD_BUSY ;
 int MV88E61XX_SMI_CMD_PHY (int) ;
 int MV88E61XX_SMI_CMD_REG (int) ;
 int MV88E61XX_SMI_CMD_WRITE ;
 int MV88E61XX_SMI_REG_CMD ;
 int MV88E61XX_SMI_REG_DAT ;
 int cvm_oct_mdio_write (struct ifnet*,int ,int ,int) ;
 int cvm_oct_mv88e61xx_smi_wait (struct ifnet*) ;

__attribute__((used)) static void
cvm_oct_mv88e61xx_smi_write(struct ifnet *ifp, int phy_id, int location, int val)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

 cvm_oct_mv88e61xx_smi_wait(ifp);
 cvm_oct_mdio_write(ifp, priv->phy_id, MV88E61XX_SMI_REG_DAT, val);
 cvm_oct_mdio_write(ifp, priv->phy_id, MV88E61XX_SMI_REG_CMD,
     MV88E61XX_SMI_CMD_BUSY | MV88E61XX_SMI_CMD_22 |
     MV88E61XX_SMI_CMD_WRITE | MV88E61XX_SMI_CMD_PHY(phy_id) |
     MV88E61XX_SMI_CMD_REG(location));
 cvm_oct_mv88e61xx_smi_wait(ifp);
}

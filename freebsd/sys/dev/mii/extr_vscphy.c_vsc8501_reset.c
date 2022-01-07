
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscphy_softc {int contype; int mii_sc; } ;


 int VSC8501_EXTCTL1_REG ;
 int VSC8501_EXTCTL1_RGMII_MODE ;
 scalar_t__ mii_contype_is_rgmii (int ) ;
 int mii_phy_reset (int *) ;
 int vsc8501_setup_rgmii (struct vscphy_softc*) ;
 int vscphy_read (struct vscphy_softc*,int ) ;
 int vscphy_write (struct vscphy_softc*,int ,int) ;

__attribute__((used)) static void
vsc8501_reset(struct vscphy_softc *vsc)
{
 int reg;





 reg = vscphy_read(vsc, VSC8501_EXTCTL1_REG);
 if (mii_contype_is_rgmii(vsc->contype))
  reg |= VSC8501_EXTCTL1_RGMII_MODE;
 else
  reg &= ~VSC8501_EXTCTL1_RGMII_MODE;
 vscphy_write(vsc, VSC8501_EXTCTL1_REG, reg);

 mii_phy_reset(&vsc->mii_sc);




 if (mii_contype_is_rgmii(vsc->contype))
     vsc8501_setup_rgmii(vsc);
}

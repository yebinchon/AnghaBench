
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mdio_ops {int dummy; } ;
struct cphy {int caps; char* desc; int * ops; } ;
struct TYPE_4__ {int adapter; struct cphy phy; } ;
typedef TYPE_1__ pinfo_t ;


 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_IRQ ;
 int SUPPORTED_MII ;
 int SUPPORTED_TP ;
 int VSC8211_EXT_CTRL ;
 int VSC8211_EXT_PAGE_AXS ;
 int VSC8211_LED_CTRL ;
 int VSC8211_SIGDET_CTRL ;
 unsigned int VSC_CTRL_CLAUSE37_VIEW ;
 unsigned int VSC_CTRL_MEDIA_MODE_HI ;
 int cphy_init (struct cphy*,int ,TYPE_1__*,int,int *,struct mdio_ops const*,int,char*) ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int mdio_write (struct cphy*,int ,int ,unsigned int) ;
 int msleep (int) ;
 int udelay (int) ;
 int vsc8211_fiber_ops ;
 int vsc8211_ops ;
 int vsc8211_reset (struct cphy*,int ) ;

int t3_vsc8211_phy_prep(pinfo_t *pinfo, int phy_addr,
   const struct mdio_ops *mdio_ops)
{
 struct cphy *phy = &pinfo->phy;
 int err;
 unsigned int val;

 cphy_init(&pinfo->phy, pinfo->adapter, pinfo, phy_addr, &vsc8211_ops, mdio_ops,
    SUPPORTED_10baseT_Full | SUPPORTED_100baseT_Full |
    SUPPORTED_1000baseT_Full | SUPPORTED_Autoneg | SUPPORTED_MII |
    SUPPORTED_TP | SUPPORTED_IRQ, "10/100/1000BASE-T");
 msleep(20);

 err = mdio_read(phy, 0, VSC8211_EXT_CTRL, &val);
 if (err)
  return err;
 if (val & VSC_CTRL_MEDIA_MODE_HI) {

  return mdio_write(phy, 0, VSC8211_LED_CTRL, 0x100);
 }

 phy->caps = SUPPORTED_1000baseT_Full | SUPPORTED_Autoneg |
      SUPPORTED_MII | SUPPORTED_FIBRE | SUPPORTED_IRQ;
 phy->desc = "1000BASE-X";
 phy->ops = &vsc8211_fiber_ops;

 if ((err = mdio_write(phy, 0, VSC8211_EXT_PAGE_AXS, 1)) != 0 ||
     (err = mdio_write(phy, 0, VSC8211_SIGDET_CTRL, 1)) != 0 ||
     (err = mdio_write(phy, 0, VSC8211_EXT_PAGE_AXS, 0)) != 0 ||
     (err = mdio_write(phy, 0, VSC8211_EXT_CTRL,
         val | VSC_CTRL_CLAUSE37_VIEW)) != 0 ||
     (err = vsc8211_reset(phy, 0)) != 0)
  return err;

 udelay(5);
 return 0;
}

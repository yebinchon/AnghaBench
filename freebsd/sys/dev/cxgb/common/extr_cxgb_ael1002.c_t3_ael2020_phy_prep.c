
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mdio_ops {int dummy; } ;
struct cphy {int modtype; } ;
struct TYPE_4__ {int adapter; struct cphy phy; } ;
typedef TYPE_1__ pinfo_t ;


 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_IRQ ;
 int ael2020_get_module_type (struct cphy*,int ) ;
 int ael2020_ops ;
 int ael2020_reset_regs ;
 int ael_laser_down (struct cphy*,int ) ;
 int cphy_init (struct cphy*,int ,TYPE_1__*,int,int *,struct mdio_ops const*,int,char*) ;
 int msleep (int) ;
 int set_phy_regs (struct cphy*,int ) ;

int t3_ael2020_phy_prep(pinfo_t *pinfo, int phy_addr,
   const struct mdio_ops *mdio_ops)
{
 int err;
 struct cphy *phy = &pinfo->phy;

 cphy_init(phy, pinfo->adapter, pinfo, phy_addr, &ael2020_ops, mdio_ops,
  SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE |
    SUPPORTED_IRQ, "10GBASE-R");
 msleep(125);

 err = set_phy_regs(phy, ael2020_reset_regs);
 if (err)
  return err;
 msleep(100);

 err = ael2020_get_module_type(phy, 0);
 if (err >= 0)
  phy->modtype = err;

 ael_laser_down(phy, 0);
 return 0;
}

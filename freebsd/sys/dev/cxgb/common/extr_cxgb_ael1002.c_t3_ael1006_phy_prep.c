
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
 int ael1006_ops ;
 int ael100x_txon (struct cphy*) ;
 int cphy_init (struct cphy*,int ,TYPE_1__*,int,int *,struct mdio_ops const*,int,char*) ;
 int phy_modtype_sr ;

int t3_ael1006_phy_prep(pinfo_t *pinfo, int phy_addr,
   const struct mdio_ops *mdio_ops)
{
 struct cphy *phy = &pinfo->phy;

 cphy_init(phy, pinfo->adapter, pinfo, phy_addr, &ael1006_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE,
    "10GBASE-SR");
 phy->modtype = phy_modtype_sr;
 ael100x_txon(phy);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mdio_ops {int dummy; } ;
struct cphy {int addr; } ;
struct TYPE_4__ {int adapter; struct cphy phy; } ;
typedef TYPE_1__ pinfo_t ;


 int MDIO_DEV_PMA_PMD ;
 int MII_BMSR ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_TP ;
 int cphy_init (struct cphy*,int ,TYPE_1__*,int,int *,struct mdio_ops const*,int,char*) ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int qt2045_ops ;

int t3_qt2045_phy_prep(pinfo_t *pinfo, int phy_addr,
         const struct mdio_ops *mdio_ops)
{
 unsigned int stat;
 struct cphy *phy = &pinfo->phy;

 cphy_init(phy, pinfo->adapter, pinfo, phy_addr, &qt2045_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_TP,
    "10GBASE-CX4");





 if (!phy_addr && !mdio_read(phy, MDIO_DEV_PMA_PMD, MII_BMSR, &stat) &&
     stat == 0xffff)
  phy->addr = 1;
 return 0;
}

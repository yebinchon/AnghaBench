
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mdio_ops {int dummy; } ;
struct TYPE_4__ {int adapter; int phy; } ;
typedef TYPE_1__ pinfo_t ;


 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int cphy_init (int *,int ,TYPE_1__*,int,int *,struct mdio_ops const*,int,char*) ;
 int msleep (int) ;
 int tn1010_ops ;

int t3_tn1010_phy_prep(pinfo_t *pinfo, int phy_addr,
         const struct mdio_ops *mdio_ops)
{
 cphy_init(&pinfo->phy, pinfo->adapter, pinfo, phy_addr, &tn1010_ops, mdio_ops,
    SUPPORTED_1000baseT_Full | SUPPORTED_10000baseT_Full |
    SUPPORTED_Autoneg | SUPPORTED_AUI | SUPPORTED_TP,
    "1000/10GBASE-T");
 msleep(500);
 return 0;
}

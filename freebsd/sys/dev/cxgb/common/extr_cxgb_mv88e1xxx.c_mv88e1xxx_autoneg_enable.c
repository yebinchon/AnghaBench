
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_ISOLATE ;
 int BMCR_PDOWN ;
 int CROSSOVER_AUTO ;
 int MII_BMCR ;
 int mv88e1xxx_crossover_set (struct cphy*,int ) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int,int) ;

__attribute__((used)) static int mv88e1xxx_autoneg_enable(struct cphy *cphy)
{
 mv88e1xxx_crossover_set(cphy, CROSSOVER_AUTO);


 return t3_mdio_change_bits(cphy, 0, MII_BMCR, BMCR_PDOWN | BMCR_ISOLATE,
        BMCR_ANENABLE | BMCR_ANRESTART);
}

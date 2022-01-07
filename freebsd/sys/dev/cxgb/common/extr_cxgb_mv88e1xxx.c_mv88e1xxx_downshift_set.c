
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MV88E1XXX_EXT_SPECIFIC_CNTRL ;
 int M_DOWNSHIFT_CNT ;
 int V_DOWNSHIFT_CNT (int) ;
 int V_DOWNSHIFT_ENABLE ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int,int) ;

__attribute__((used)) static int mv88e1xxx_downshift_set(struct cphy *cphy, int downshift_enable)
{




 return t3_mdio_change_bits(cphy, 0, MV88E1XXX_EXT_SPECIFIC_CNTRL,
  V_DOWNSHIFT_ENABLE | V_DOWNSHIFT_CNT(M_DOWNSHIFT_CNT),
  downshift_enable ? V_DOWNSHIFT_ENABLE | V_DOWNSHIFT_CNT(2) : 0);
}

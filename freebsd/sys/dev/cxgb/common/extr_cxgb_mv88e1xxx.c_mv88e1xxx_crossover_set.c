
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MV88E1XXX_SPECIFIC_CNTRL ;
 int M_PSCR_MDI_XOVER_MODE ;
 int V_PSCR_MDI_XOVER_MODE (int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int mv88e1xxx_crossover_set(struct cphy *cphy, int crossover)
{
 return t3_mdio_change_bits(cphy, 0, MV88E1XXX_SPECIFIC_CNTRL,
       V_PSCR_MDI_XOVER_MODE(M_PSCR_MDI_XOVER_MODE),
       V_PSCR_MDI_XOVER_MODE(crossover));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int addr; int * adapter; } ;
typedef int adapter_t ;


 int A_XGM_SERDES_STAT0 ;
 int A_XGM_SERDES_STAT1 ;
 int A_XGM_SERDES_STAT2 ;
 int A_XGM_SERDES_STAT3 ;
 int DUPLEX_FULL ;
 unsigned int F_LOWSIG0 ;
 int PHY_LINK_DOWN ;
 int PHY_LINK_UP ;
 int SPEED_10000 ;
 int XGM_REG (int ,int ) ;
 unsigned int t3_read_reg (int *,int ) ;

__attribute__((used)) static int xaui_direct_get_link_status(struct cphy *phy, int *link_state,
           int *speed, int *duplex, int *fc)
{
 if (link_state) {
  unsigned int status;
  adapter_t *adapter = phy->adapter;

  status = t3_read_reg(adapter,
         XGM_REG(A_XGM_SERDES_STAT0, phy->addr)) |
    t3_read_reg(adapter,
         XGM_REG(A_XGM_SERDES_STAT1, phy->addr)) |
    t3_read_reg(adapter,
         XGM_REG(A_XGM_SERDES_STAT2, phy->addr)) |
    t3_read_reg(adapter,
         XGM_REG(A_XGM_SERDES_STAT3, phy->addr));
  *link_state = status & F_LOWSIG0 ? PHY_LINK_DOWN : PHY_LINK_UP;
 }
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 return 0;
}

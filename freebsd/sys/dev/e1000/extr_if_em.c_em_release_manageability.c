
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int hw; scalar_t__ has_manage; } ;


 int E1000_MANC ;
 int E1000_MANC_ARP_EN ;
 int E1000_MANC_EN_MNG2HOST ;
 int E1000_READ_REG (int *,int ) ;
 int E1000_WRITE_REG (int *,int ,int) ;

__attribute__((used)) static void
em_release_manageability(struct adapter *adapter)
{
 if (adapter->has_manage) {
  int manc = E1000_READ_REG(&adapter->hw, E1000_MANC);


  manc |= E1000_MANC_ARP_EN;
  manc &= ~E1000_MANC_EN_MNG2HOST;

  E1000_WRITE_REG(&adapter->hw, E1000_MANC, manc);
 }
}

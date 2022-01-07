
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int e1000_enable_tx_pkt_filtering_generic (struct e1000_hw*) ;

bool e1000_enable_tx_pkt_filtering(struct e1000_hw *hw)
{
 return e1000_enable_tx_pkt_filtering_generic(hw);
}

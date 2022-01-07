
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int e1000_reset_adaptive_generic (struct e1000_hw*) ;

void e1000_reset_adaptive(struct e1000_hw *hw)
{
 e1000_reset_adaptive_generic(hw);
}

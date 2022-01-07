
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_SUCCESS ;
 int IXGBE_UTA (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw)
{
 int i;

 DEBUGFUNC("ixgbe_init_uta_tables_generic");
 DEBUGOUT(" Clearing UTA\n");

 for (i = 0; i < 128; i++)
  IXGBE_WRITE_REG(hw, IXGBE_UTA(i), 0);

 return IXGBE_SUCCESS;
}

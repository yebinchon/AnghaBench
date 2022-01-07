
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_ATR_BUCKET_HASH_KEY ;
 int IXGBE_ATR_SIGNATURE_HASH_KEY ;
 int IXGBE_FDIRCTRL ;
 int IXGBE_FDIRCTRL_INIT_DONE ;
 int IXGBE_FDIRHKEY ;
 int IXGBE_FDIRSKEY ;
 int IXGBE_FDIR_INIT_DONE_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int msec_delay (int) ;

__attribute__((used)) static void ixgbe_fdir_enable_82599(struct ixgbe_hw *hw, u32 fdirctrl)
{
 int i;

 DEBUGFUNC("ixgbe_fdir_enable_82599");


 IXGBE_WRITE_REG(hw, IXGBE_FDIRHKEY, IXGBE_ATR_BUCKET_HASH_KEY);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRSKEY, IXGBE_ATR_SIGNATURE_HASH_KEY);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRCTRL, fdirctrl);
 IXGBE_WRITE_FLUSH(hw);
 for (i = 0; i < IXGBE_FDIR_INIT_DONE_POLL; i++) {
  if (IXGBE_READ_REG(hw, IXGBE_FDIRCTRL) &
       IXGBE_FDIRCTRL_INIT_DONE)
   break;
  msec_delay(1);
 }

 if (i >= IXGBE_FDIR_INIT_DONE_POLL)
  DEBUGOUT("Flow Director poll time exceeded!\n");
}

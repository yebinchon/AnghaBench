
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGOUT (char*) ;
 int IXGBE_FDIRCMD ;
 int IXGBE_FDIRCMD_CMD_QUERY_REM_FILT ;
 int IXGBE_FDIRCMD_CMD_REMOVE_FLOW ;
 int IXGBE_FDIRCMD_FILTER_VALID ;
 int IXGBE_FDIRHASH ;
 int IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_fdir_check_cmd_complete (struct ixgbe_hw*,int*) ;

s32 ixgbe_fdir_erase_perfect_filter_82599(struct ixgbe_hw *hw,
       union ixgbe_atr_input *input,
       u16 soft_id)
{
 u32 fdirhash;
 u32 fdircmd;
 s32 err;


 fdirhash = input->formatted.bkt_hash;
 fdirhash |= soft_id << IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT;
 IXGBE_WRITE_REG(hw, IXGBE_FDIRHASH, fdirhash);


 IXGBE_WRITE_FLUSH(hw);


 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD, IXGBE_FDIRCMD_CMD_QUERY_REM_FILT);

 err = ixgbe_fdir_check_cmd_complete(hw, &fdircmd);
 if (err) {
  DEBUGOUT("Flow Director command did not complete!\n");
  return err;
 }


 if (fdircmd & IXGBE_FDIRCMD_FILTER_VALID) {
  IXGBE_WRITE_REG(hw, IXGBE_FDIRHASH, fdirhash);
  IXGBE_WRITE_FLUSH(hw);
  IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD,
    IXGBE_FDIRCMD_CMD_REMOVE_FLOW);
 }

 return IXGBE_SUCCESS;
}

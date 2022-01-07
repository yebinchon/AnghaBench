
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_CPU_TO_LE32 (int) ;
 int IXGBE_ERROR_CAUTION ;
 int IXGBE_ERR_HOST_INTERFACE_COMMAND ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_FLEX_MNG ;
 int IXGBE_FWSTS ;
 int IXGBE_FWSTS_FWRI ;
 int IXGBE_HICR ;
 int IXGBE_HICR_C ;
 int IXGBE_HICR_EN ;
 int IXGBE_HICR_SV ;
 int IXGBE_HI_MAX_BLOCK_BYTE_LENGTH ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,int,int ) ;
 int msec_delay (int) ;

s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
         u32 timeout)
{
 u32 hicr, i, fwsts;
 u16 dword_len;

 DEBUGFUNC("ixgbe_hic_unlocked");

 if (!length || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
  DEBUGOUT1("Buffer length failure buffersize=%d.\n", length);
  return IXGBE_ERR_HOST_INTERFACE_COMMAND;
 }


 fwsts = IXGBE_READ_REG(hw, IXGBE_FWSTS);
 IXGBE_WRITE_REG(hw, IXGBE_FWSTS, fwsts | IXGBE_FWSTS_FWRI);


 hicr = IXGBE_READ_REG(hw, IXGBE_HICR);
 if (!(hicr & IXGBE_HICR_EN)) {
  DEBUGOUT("IXGBE_HOST_EN bit disabled.\n");
  return IXGBE_ERR_HOST_INTERFACE_COMMAND;
 }


 if (length % sizeof(u32)) {
  DEBUGOUT("Buffer length failure, not aligned to dword");
  return IXGBE_ERR_INVALID_ARGUMENT;
 }

 dword_len = length >> 2;




 for (i = 0; i < dword_len; i++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_FLEX_MNG,
          i, IXGBE_CPU_TO_LE32(buffer[i]));


 IXGBE_WRITE_REG(hw, IXGBE_HICR, hicr | IXGBE_HICR_C);

 for (i = 0; i < timeout; i++) {
  hicr = IXGBE_READ_REG(hw, IXGBE_HICR);
  if (!(hicr & IXGBE_HICR_C))
   break;
  msec_delay(1);
 }


 if ((timeout && i == timeout) ||
     !(IXGBE_READ_REG(hw, IXGBE_HICR) & IXGBE_HICR_SV)) {
  ERROR_REPORT1(IXGBE_ERROR_CAUTION,
        "Command has failed with no status valid.\n");
  return IXGBE_ERR_HOST_INTERFACE_COMMAND;
 }

 return IXGBE_SUCCESS;
}

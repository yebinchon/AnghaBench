
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_PARAM ;
 scalar_t__ E1000_HI_MAX_MNG_DATA_LENGTH ;
 int E1000_HOST_IF ;
 scalar_t__ E1000_READ_REG_ARRAY_DWORD (struct e1000_hw*,int ,scalar_t__) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG_ARRAY_DWORD (struct e1000_hw*,int ,scalar_t__,scalar_t__) ;

s32 e1000_mng_host_if_write_generic(struct e1000_hw *hw, u8 *buffer,
        u16 length, u16 offset, u8 *sum)
{
 u8 *tmp;
 u8 *bufptr = buffer;
 u32 data = 0;
 u16 remaining, i, j, prev_bytes;

 DEBUGFUNC("e1000_mng_host_if_write_generic");



 if (length == 0 || offset + length > E1000_HI_MAX_MNG_DATA_LENGTH)
  return -E1000_ERR_PARAM;

 tmp = (u8 *)&data;
 prev_bytes = offset & 0x3;
 offset >>= 2;

 if (prev_bytes) {
  data = E1000_READ_REG_ARRAY_DWORD(hw, E1000_HOST_IF, offset);
  for (j = prev_bytes; j < sizeof(u32); j++) {
   *(tmp + j) = *bufptr++;
   *sum += *(tmp + j);
  }
  E1000_WRITE_REG_ARRAY_DWORD(hw, E1000_HOST_IF, offset, data);
  length -= j - prev_bytes;
  offset++;
 }

 remaining = length & 0x3;
 length -= remaining;


 length >>= 2;




 for (i = 0; i < length; i++) {
  for (j = 0; j < sizeof(u32); j++) {
   *(tmp + j) = *bufptr++;
   *sum += *(tmp + j);
  }

  E1000_WRITE_REG_ARRAY_DWORD(hw, E1000_HOST_IF, offset + i,
         data);
 }
 if (remaining) {
  for (j = 0; j < sizeof(u32); j++) {
   if (j < remaining)
    *(tmp + j) = *bufptr++;
   else
    *(tmp + j) = 0;

   *sum += *(tmp + j);
  }
  E1000_WRITE_REG_ARRAY_DWORD(hw, E1000_HOST_IF, offset + i,
         data);
 }

 return E1000_SUCCESS;
}

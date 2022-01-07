
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_INVALID_MAC_ADDR ;
 scalar_t__ IXGBE_IS_BROADCAST (scalar_t__*) ;
 scalar_t__ IXGBE_IS_MULTICAST (scalar_t__*) ;
 int IXGBE_SUCCESS ;

s32 ixgbe_validate_mac_addr(u8 *mac_addr)
{
 s32 status = IXGBE_SUCCESS;

 DEBUGFUNC("ixgbe_validate_mac_addr");


 if (IXGBE_IS_MULTICAST(mac_addr)) {
  status = IXGBE_ERR_INVALID_MAC_ADDR;

 } else if (IXGBE_IS_BROADCAST(mac_addr)) {
  status = IXGBE_ERR_INVALID_MAC_ADDR;

 } else if (mac_addr[0] == 0 && mac_addr[1] == 0 && mac_addr[2] == 0 &&
     mac_addr[3] == 0 && mac_addr[4] == 0 && mac_addr[5] == 0) {
  status = IXGBE_ERR_INVALID_MAC_ADDR;
 }
 return status;
}

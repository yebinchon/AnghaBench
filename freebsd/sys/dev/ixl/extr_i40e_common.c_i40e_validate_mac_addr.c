
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGFUNC (char*) ;
 int I40E_ERR_INVALID_MAC_ADDR ;
 scalar_t__ I40E_IS_MULTICAST (scalar_t__*) ;
 int I40E_SUCCESS ;

enum i40e_status_code i40e_validate_mac_addr(u8 *mac_addr)
{
 enum i40e_status_code status = I40E_SUCCESS;

 DEBUGFUNC("i40e_validate_mac_addr");





 if (I40E_IS_MULTICAST(mac_addr) ||
     (mac_addr[0] == 0 && mac_addr[1] == 0 && mac_addr[2] == 0 &&
       mac_addr[3] == 0 && mac_addr[4] == 0 && mac_addr[5] == 0))
  status = I40E_ERR_INVALID_MAC_ADDR;

 return status;
}

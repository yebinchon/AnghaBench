
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_mac_address_read_data {int port_mac; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_AQC_PORT_ADDR_VALID ;
 int I40E_ERR_INVALID_MAC_ADDR ;
 int I40E_NONDMA_TO_NONDMA ;
 int i40e_aq_mac_address_read (struct i40e_hw*,int*,struct i40e_aqc_mac_address_read_data*,int *) ;
 int i40e_memcpy (int *,int *,int,int ) ;

enum i40e_status_code i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
{
 struct i40e_aqc_mac_address_read_data addrs;
 enum i40e_status_code status;
 u16 flags = 0;

 status = i40e_aq_mac_address_read(hw, &flags, &addrs, ((void*)0));
 if (status)
  return status;

 if (flags & I40E_AQC_PORT_ADDR_VALID)
  i40e_memcpy(mac_addr, &addrs.port_mac, sizeof(addrs.port_mac),
   I40E_NONDMA_TO_NONDMA);
 else
  status = I40E_ERR_INVALID_MAC_ADDR;

 return status;
}

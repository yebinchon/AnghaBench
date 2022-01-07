
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int bluetooth_hci_command_timeout_value ;
 int hz ;

u_int32_t
bluetooth_hci_command_timeout(void)
{
 return (bluetooth_hci_command_timeout_value * hz);
}

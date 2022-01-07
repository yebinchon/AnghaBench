
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int bluetooth_sco_rtx_timeout_value ;
 int hz ;

u_int32_t
bluetooth_sco_rtx_timeout(void)
{
 return (bluetooth_sco_rtx_timeout_value * hz);
}

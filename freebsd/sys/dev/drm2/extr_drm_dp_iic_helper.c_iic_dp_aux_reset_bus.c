
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int iic_dp_aux_address (int ,int ,int) ;
 int iic_dp_aux_stop (int ,int) ;

__attribute__((used)) static void
iic_dp_aux_reset_bus(device_t idev)
{

 (void)iic_dp_aux_address(idev, 0, 0);
 (void)iic_dp_aux_stop(idev, 0);
}

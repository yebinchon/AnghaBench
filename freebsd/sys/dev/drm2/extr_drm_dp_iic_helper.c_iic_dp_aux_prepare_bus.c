
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int iic_dp_aux_reset_bus (int ) ;

__attribute__((used)) static int
iic_dp_aux_prepare_bus(device_t idev)
{


 iic_dp_aux_reset_bus(idev);
 return (0);
}

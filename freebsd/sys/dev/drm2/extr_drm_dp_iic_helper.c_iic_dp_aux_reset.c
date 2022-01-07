
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int iic_dp_aux_reset_bus (int ) ;

__attribute__((used)) static int
iic_dp_aux_reset(device_t idev, u_char speed, u_char addr, u_char *oldaddr)
{

 iic_dp_aux_reset_bus(idev);
 return (0);
}

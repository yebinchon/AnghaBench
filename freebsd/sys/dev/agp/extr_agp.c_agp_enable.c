
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_ENABLE (int ,int ) ;

int
agp_enable(device_t dev, u_int32_t mode)
{
 return AGP_ENABLE(dev, mode);
}

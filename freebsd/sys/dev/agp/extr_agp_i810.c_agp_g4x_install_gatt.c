
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int agp_gen4_install_gatt (int ,int) ;

__attribute__((used)) static int
agp_g4x_install_gatt(device_t dev)
{

 return (agp_gen4_install_gatt(dev, 2 * 1024 * 1024));
}

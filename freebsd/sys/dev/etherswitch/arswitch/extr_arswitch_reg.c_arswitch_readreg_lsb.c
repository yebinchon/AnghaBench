
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int arswitch_readreg16 (int ,int) ;

int
arswitch_readreg_lsb(device_t dev, int addr)
{

 return (arswitch_readreg16(dev, addr));
}

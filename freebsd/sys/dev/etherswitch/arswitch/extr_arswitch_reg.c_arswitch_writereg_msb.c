
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int arswitch_writereg16 (int ,int,int) ;

int
arswitch_writereg_msb(device_t dev, int addr, int data)
{

 return (arswitch_writereg16(dev, addr + 2, (data >> 16) & 0xffff));
}

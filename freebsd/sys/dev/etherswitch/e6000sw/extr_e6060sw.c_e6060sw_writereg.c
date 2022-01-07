
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MDIO_WRITEREG (int ,int,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
e6060sw_writereg(device_t dev, int addr, int value)
{
 int devaddr, regaddr;

 devaddr = (addr >> 5) & 0x1f;
 regaddr = addr & 0x1f;

 return (MDIO_WRITEREG(device_get_parent(dev), devaddr, regaddr, value));
}

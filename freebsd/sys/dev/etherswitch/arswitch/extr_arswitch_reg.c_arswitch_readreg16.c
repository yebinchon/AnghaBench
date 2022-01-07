
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int MDIO_READREG (int ,int,int) ;
 int arswitch_split_setpage (int ,int,int*,int*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
arswitch_readreg16(device_t dev, int addr)
{
 uint16_t phy, reg;

 arswitch_split_setpage(dev, addr, &phy, &reg);
 return (MDIO_READREG(device_get_parent(dev), 0x10 | phy, reg));
}

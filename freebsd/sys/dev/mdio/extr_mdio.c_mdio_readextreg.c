
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MDIO_READEXTREG (int ,int,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
mdio_readextreg(device_t dev, int phy, int devad, int reg)
{

 return (MDIO_READEXTREG(device_get_parent(dev), phy, devad, reg));
}

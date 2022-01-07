
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MDIO_WRITEEXTREG (int ,int,int,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
mdio_writeextreg(device_t dev, int phy, int devad, int reg,
    int val)
{

 return (MDIO_WRITEEXTREG(device_get_parent(dev), phy, devad, reg, val));
}

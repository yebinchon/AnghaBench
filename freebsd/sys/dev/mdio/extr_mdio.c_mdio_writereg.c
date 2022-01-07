
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MDIO_WRITEREG (int ,int,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
mdio_writereg(device_t dev, int phy, int reg, int val)
{

 return (MDIO_WRITEREG(device_get_parent(dev), phy, reg, val));
}

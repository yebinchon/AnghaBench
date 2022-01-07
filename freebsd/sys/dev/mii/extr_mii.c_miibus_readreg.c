
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MIIBUS_READREG (int ,int,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
miibus_readreg(device_t dev, int phy, int reg)
{
 device_t parent;

 parent = device_get_parent(dev);
 return (MIIBUS_READREG(parent, phy, reg));
}

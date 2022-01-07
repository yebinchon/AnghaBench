
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ip17x_readphy (int ,int,int) ;
 int ip17x_writephy (int ,int,int,int) ;

int
ip17x_updatephy(device_t dev, int phy, int reg, int mask, int value)
{
 int val;

 val = ip17x_readphy(dev, phy, reg);
 val &= ~mask;
 val |= value;
 return (ip17x_writephy(dev, phy, reg, val));
}

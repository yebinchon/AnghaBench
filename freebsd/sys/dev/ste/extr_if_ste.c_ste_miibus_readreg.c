
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mii_bitbang_readreg (int ,int *,int,int) ;
 int ste_mii_bitbang_ops ;

__attribute__((used)) static int
ste_miibus_readreg(device_t dev, int phy, int reg)
{

 return (mii_bitbang_readreg(dev, &ste_mii_bitbang_ops, phy, reg));
}

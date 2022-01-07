
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mv_read_ge_smi (int ,int,int) ;

__attribute__((used)) static int
mge_mdio_readreg(device_t dev, int phy, int reg)
{
 int ret;

 ret = mv_read_ge_smi(dev, phy, reg);

 return (ret);
}

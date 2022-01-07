
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mv_write_ge_smi (int ,int,int,int) ;

__attribute__((used)) static int
mge_mdio_writereg(device_t dev, int phy, int reg, int value)
{

 mv_write_ge_smi(dev, phy, reg, value);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int RTL_WAITOK ;
 int smi_read (int ,int,int*,int ) ;

__attribute__((used)) static int
rtl_readreg(device_t dev, int reg)
{
 uint16_t data;

 data = 0;

 smi_read(dev, reg, &data, RTL_WAITOK);
 return (data);
}

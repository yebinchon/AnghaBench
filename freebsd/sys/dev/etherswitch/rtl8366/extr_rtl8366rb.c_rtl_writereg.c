
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int RTL_WAITOK ;
 int smi_write (int ,int,int,int ) ;

__attribute__((used)) static int
rtl_writereg(device_t dev, int reg, int value)
{
 return (smi_write(dev, reg, value, RTL_WAITOK));
}

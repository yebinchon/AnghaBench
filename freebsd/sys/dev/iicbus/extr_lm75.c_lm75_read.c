
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct iic_msg {int member_1; int member_2; int * member_3; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 scalar_t__ iicbus_transfer (int ,struct iic_msg*,int ) ;
 int nitems (struct iic_msg*) ;

__attribute__((used)) static int
lm75_read(device_t dev, uint32_t addr, uint8_t reg, uint8_t *data, size_t len)
{
 struct iic_msg msg[2] = {
     { addr, IIC_M_WR | IIC_M_NOSTOP, 1, &reg },
     { addr, IIC_M_RD, len, data },
 };

 if (iicbus_transfer(dev, msg, nitems(msg)) != 0)
  return (-1);

 return (0);
}

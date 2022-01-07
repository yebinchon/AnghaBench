
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_2; int* member_3; int member_1; int member_0; } ;
typedef int device_t ;


 int AD7418_ADDR ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 scalar_t__ iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
ad7418_read_2(device_t dev, int reg)
{
 uint8_t addr = reg;
 uint8_t data[2];
 struct iic_msg msgs[2] = {
      { AD7418_ADDR, IIC_M_WR, 1, &addr },
      { AD7418_ADDR, IIC_M_RD, 2, data },
 };

 return iicbus_transfer(dev, msgs, 2) != 0 ?
  -1 : ((data[0] << 8) | data[1]);
}

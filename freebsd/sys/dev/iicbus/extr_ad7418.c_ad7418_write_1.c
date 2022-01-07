
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_2; int* member_3; int member_1; int member_0; } ;
typedef int device_t ;


 int AD7418_ADDR ;
 int IIC_M_WR ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
ad7418_write_1(device_t dev, int reg, int v)
{

 uint8_t data[2];
 struct iic_msg msgs[1] = {
      { AD7418_ADDR, IIC_M_WR, 2, data },
 };
 data[0] = reg;
 data[1] = v & 0xff;
 return iicbus_transfer(dev, msgs, 1);
}

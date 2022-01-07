
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_2; int* member_3; int member_1; int member_0; } ;
typedef int device_t ;


 int DS1672_ADDR ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
ds1672_read(device_t dev, uint8_t addr, uint8_t *data, uint8_t size)
{
 struct iic_msg msgs[2] = {
      { DS1672_ADDR, IIC_M_WR, 1, &addr },
      { DS1672_ADDR, IIC_M_RD, size, data }
 };

 return (iicbus_transfer(dev, msgs, 2));
}

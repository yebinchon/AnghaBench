
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int* member_3; int member_2; int member_1; int member_0; } ;
typedef int device_t ;


 int DS1672_ADDR ;
 int ENOMEM ;
 int IIC_M_WR ;
 int MAX_IIC_DATA_SIZE ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int
ds1672_write(device_t dev, uint8_t addr, uint8_t *data, uint8_t size)
{
 uint8_t buffer[MAX_IIC_DATA_SIZE + 1];
 struct iic_msg msgs[1] = {
      { DS1672_ADDR, IIC_M_WR, size + 1, buffer },
 };

 if (size > MAX_IIC_DATA_SIZE)
  return (ENOMEM);

 buffer[0] = addr;
 memcpy(buffer + 1, data, size);
 return (iicbus_transfer(dev, msgs, 1));
}

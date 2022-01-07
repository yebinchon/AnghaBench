
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iic_msg {int member_2; int * member_3; int member_1; int member_0; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int IIC_M_WR ;
 int device_printf (int ,char*) ;
 int hz ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int pause (char*,int ) ;

__attribute__((used)) static int
ds1631_read_2(device_t dev, uint32_t addr, uint8_t reg, uint16_t *data)
{
 uint8_t buf[4];
 int err, try = 0;

 struct iic_msg msg[2] = {
  { addr, IIC_M_WR, 1, &reg },
  { addr, IIC_M_RD, 2, buf },
 };

 for (;;)
 {
  err = iicbus_transfer(dev, msg, 2);
  if (err != 0)
   goto retry;

  *data = *((uint16_t*)buf);
  return (0);
 retry:
  if (++try > 5) {
   device_printf(dev, "iicbus read failed\n");
   return (-1);
  }
  pause("ds1631_read_2", hz);
 }
}

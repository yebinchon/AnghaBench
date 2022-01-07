
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int uint32_t ;
struct iic_msg {unsigned char* member_3; int len; int member_2; int member_1; int member_0; } ;
typedef int device_t ;


 int IIC_M_WR ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ iicbus_transfer (int ,struct iic_msg*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pause (char*,int ) ;

__attribute__((used)) static int
fcu_write(device_t dev, uint32_t addr, uint8_t reg, uint8_t *buff,
   int len)
{
 unsigned char buf[4];
 int try = 0;

 struct iic_msg msg[] = {
  { addr, IIC_M_WR, 0, buf }
 };

 msg[0].len = len + 1;
 buf[0] = reg;
 memcpy(buf + 1, buff, len);

 for (;;)
 {
  if (iicbus_transfer(dev, msg, 1) == 0)
   return (0);

  if (++try > 5) {
   device_printf(dev, "iicbus write failed\n");
   return (-1);
  }
  pause("fcu_write", hz);
 }
}

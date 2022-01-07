
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct write_data {int reg; int val; } ;
struct read_data {int reg; int val; } ;
struct iic_msg {int member_1; int member_2; int* member_3; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int device_printf (int ,char*) ;
 int hz ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int pause (char*,int ) ;

__attribute__((used)) static int
ad7417_write_read(device_t dev, uint32_t addr, struct write_data out,
    struct read_data *in)
{
 uint8_t buf[4];
 int err, try = 0;


 struct iic_msg msg[3] = {
     { addr, IIC_M_WR, 2, buf },
     { addr, IIC_M_WR | IIC_M_NOSTOP, 1, &in->reg },
     { addr, IIC_M_RD, 2, buf },
 };


 buf[0] = out.reg;
 buf[1] = out.val & 0xff;

 for (;;)
 {
  err = iicbus_transfer(dev, msg, 3);
  if (err != 0)
   goto retry;

  in->val = *((uint16_t*)buf);
  return (0);
 retry:
  if (++try > 5) {
   device_printf(dev, "iicbus write/read failed\n");
   return (-1);
  }
  pause("ad7417_write_read", hz);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iic_msg {struct iic_msg* member_3; int member_2; int member_1; int member_0; } ;
typedef struct iic_msg uint8_t ;
typedef int uint16_t ;
typedef int device_t ;


 int IIC_M_WR ;
 int iicbus_get_addr (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int ) ;
 int nitems (struct iic_msg*) ;

__attribute__((used)) static int
isl_write_byte(device_t dev, uint8_t reg, uint8_t val)
{
 uint16_t addr = iicbus_get_addr(dev);
 uint8_t bytes[] = { reg, val };
 struct iic_msg msgs[] = {
      { addr, IIC_M_WR, nitems(bytes), bytes },
 };

 return (iicbus_transfer(dev, msgs, nitems(msgs)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iic_msg {int member_1; int member_2; int * member_3; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int iicbus_get_addr (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int ) ;
 int nitems (struct iic_msg*) ;

__attribute__((used)) static int
cyapa_read_bytes(device_t dev, uint8_t reg, uint8_t *val, int cnt)
{
 uint16_t addr = iicbus_get_addr(dev);
 struct iic_msg msgs[] = {
      { addr, IIC_M_WR | IIC_M_NOSTOP, 1, &reg },
      { addr, IIC_M_RD, cnt, val },
 };

 return (iicbus_transfer(dev, msgs, nitems(msgs)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct iic_msg {int len; void** buf; int flags; void* slave; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int IIC_M_WR ;
 void* iicbus_get_addr (int ) ;
 int iicbus_transfer_excl (int ,struct iic_msg*,int,int) ;

__attribute__((used)) static int
nxprtc_readfrom(device_t slavedev, uint8_t regaddr, void *buffer,
    uint16_t buflen, int waithow)
{
 struct iic_msg msg;
 int err;
 uint8_t slaveaddr;
 slaveaddr = iicbus_get_addr(slavedev);

 msg.slave = slaveaddr;
 msg.flags = IIC_M_WR;
 msg.len = 1;
 msg.buf = &regaddr;

 if ((err = iicbus_transfer_excl(slavedev, &msg, 1, waithow)) != 0)
  return (err);

 msg.slave = slaveaddr;
 msg.flags = IIC_M_RD;
 msg.len = buflen;
 msg.buf = buffer;

 return (iicbus_transfer_excl(slavedev, &msg, 1, waithow));
}

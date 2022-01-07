
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iic_msg {int * buf; scalar_t__ len; int flags; int slave; } ;
typedef int device_t ;


 int IIC_M_WR ;
 int MAX_TRANSFER ;
 int iicbus_get_addr (int ) ;
 int iicbus_transfer_excl (int ,struct iic_msg*,int,int) ;
 int memcpy (int *,void*,int ) ;

__attribute__((used)) static int
rtc8583_writeto(device_t slavedev, uint8_t regaddr, void *buffer,
    uint16_t buflen, int waithow)
{
 struct iic_msg msgs;
 uint8_t slaveaddr;
 uint8_t newbuf[MAX_TRANSFER];

 slaveaddr = iicbus_get_addr(slavedev);

 newbuf[0] = regaddr;
 memcpy(newbuf + 1, buffer, buflen);
 msgs.slave = slaveaddr;
 msgs.flags = IIC_M_WR;
 msgs.len = 1 + buflen;
 msgs.buf = newbuf;

 return (iicbus_transfer_excl(slavedev, &msgs, 1, waithow));
}

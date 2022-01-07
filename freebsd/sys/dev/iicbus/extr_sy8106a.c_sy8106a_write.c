
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sy8106a_softc {int addr; } ;
struct iic_msg {int len; int * buf; int flags; int slave; } ;
typedef int device_t ;


 int IIC_M_WR ;
 struct sy8106a_softc* device_get_softc (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
sy8106a_write(device_t dev, uint8_t reg, uint8_t val)
{
 struct sy8106a_softc *sc;
 struct iic_msg msg;
 uint8_t buffer[2];

 sc = device_get_softc(dev);

 buffer[0] = reg;
 buffer[1] = val;

 msg.slave = sc->addr;
 msg.flags = IIC_M_WR;
 msg.len = 2;
 msg.buf = buffer;

 return (iicbus_transfer(dev, &msg, 1));
}

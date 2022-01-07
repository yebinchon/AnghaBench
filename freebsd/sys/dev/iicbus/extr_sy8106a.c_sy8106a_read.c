
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sy8106a_softc {int addr; } ;
struct iic_msg {int len; int* buf; int flags; int slave; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int IIC_M_WR ;
 struct sy8106a_softc* device_get_softc (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
sy8106a_read(device_t dev, uint8_t reg, uint8_t *data, uint8_t size)
{
 struct sy8106a_softc *sc;
 struct iic_msg msg[2];

 sc = device_get_softc(dev);

 msg[0].slave = sc->addr;
 msg[0].flags = IIC_M_WR;
 msg[0].len = 1;
 msg[0].buf = &reg;

 msg[1].slave = sc->addr;
 msg[1].flags = IIC_M_RD;
 msg[1].len = size;
 msg[1].buf = data;

 return (iicbus_transfer(dev, msg, 2));
}

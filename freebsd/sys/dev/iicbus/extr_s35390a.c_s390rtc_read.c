
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct s390rtc_softc {int sc_addr; } ;
struct iic_msg {int slave; size_t len; int* buf; int flags; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int IIC_WAIT ;
 int bitreverse (int) ;
 struct s390rtc_softc* device_get_softc (int ) ;
 int iicbus_transfer_excl (int ,struct iic_msg*,int,int ) ;

__attribute__((used)) static int
s390rtc_read(device_t dev, uint8_t reg, uint8_t *buf, size_t len)
{
 struct s390rtc_softc *sc = device_get_softc(dev);
 struct iic_msg msg[] = {
  {
   .slave = sc->sc_addr | reg,
   .flags = IIC_M_RD,
   .len = len,
   .buf = buf,
  },
 };
 int i;
 int error;

 error = iicbus_transfer_excl(dev, msg, 1, IIC_WAIT);
 if (error)
  return (error);


 for (i = 0; i < len; ++i)
  buf[i] = bitreverse(buf[i]);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
struct smusat_softc {int sc_cache; int sc_last_update; } ;
struct iic_msg {int member_1; int member_2; int* member_3; int slave; int member_0; } ;
typedef int device_t ;


 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 struct smusat_softc* device_get_softc (int ) ;
 int iicbus_get_addr (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int memcpy (int ,int*,int) ;
 int time_uptime ;

__attribute__((used)) static int
smusat_updatecache(device_t dev)
{
 uint8_t reg = 0x3f;
 uint8_t value[16];
 struct smusat_softc *sc = device_get_softc(dev);
 int error;
 struct iic_msg msgs[2] = {
     {0, IIC_M_WR | IIC_M_NOSTOP, 1, &reg},
     {0, IIC_M_RD, 16, value},
 };

 msgs[0].slave = msgs[1].slave = iicbus_get_addr(dev);
 error = iicbus_transfer(dev, msgs, 2);
 if (error)
  return (error);

 sc->sc_last_update = time_uptime;
 memcpy(sc->sc_cache, value, sizeof(value));
 return (0);
}

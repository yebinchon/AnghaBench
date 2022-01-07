
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cyapa_softc {int dev; } ;
typedef int device_t ;


 int CMD_POWER_MODE ;
 int IIC_WAIT ;
 int cyapa_read_bytes (int ,int ,int*,int) ;
 int cyapa_write_bytes (int ,int ,int*,int) ;
 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;

__attribute__((used)) static void
cyapa_set_power_mode(struct cyapa_softc *sc, int mode)
{
 uint8_t data;
 device_t bus;
 int error;

 bus = device_get_parent(sc->dev);
 error = iicbus_request_bus(bus, sc->dev, IIC_WAIT);
 if (error == 0) {
  error = cyapa_read_bytes(sc->dev, CMD_POWER_MODE,
      &data, 1);
  data = (data & ~0xFC) | mode;
  if (error == 0) {
   error = cyapa_write_bytes(sc->dev, CMD_POWER_MODE,
       &data, 1);
  }
  iicbus_release_bus(bus, sc->dev);
 }
}

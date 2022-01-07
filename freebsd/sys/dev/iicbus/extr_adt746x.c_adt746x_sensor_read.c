
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct adt746x_softc {int sc_addr; int sc_dev; } ;
struct adt746x_sensor {scalar_t__ type; scalar_t__ reg; int dev; } ;
typedef int int8_t ;


 scalar_t__ ADT746X_SENSOR_SPEED ;
 scalar_t__ ADT746X_SENSOR_TEMP ;
 int ZERO_C_TO_K ;
 scalar_t__ adt746x_read (int ,int ,scalar_t__,int*) ;
 struct adt746x_softc* device_get_softc (int ) ;

__attribute__((used)) static int
adt746x_sensor_read(struct adt746x_sensor *sens)
{
 struct adt746x_softc *sc;
 int tmp = 0;
 uint16_t val;
 uint8_t data[1], data1[1];
 int8_t temp;

 sc = device_get_softc(sens->dev);
 if (sens->type != ADT746X_SENSOR_SPEED) {
  if (adt746x_read(sc->sc_dev, sc->sc_addr, sens->reg,
     &temp) < 0)
   return (-1);
  if (sens->type == ADT746X_SENSOR_TEMP)
   tmp = 10 * temp + ZERO_C_TO_K;
  else
   tmp = temp;
 } else {
  if (adt746x_read(sc->sc_dev, sc->sc_addr, sens->reg,
     data) < 0)
   return (-1);
  if (adt746x_read(sc->sc_dev, sc->sc_addr, sens->reg + 1,
     data1) < 0)
   return (-1);
  val = data[0] + (data1[0] << 8);

  if (val == 0 || val == 0xffff)
   tmp = 0;
  else
   tmp = (90000 * 60) / val;
 }
 return (tmp);
}

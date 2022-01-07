
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fcu_softc {int sc_addr; int sc_dev; } ;
struct fcu_fan {scalar_t__ type; int id; int dev; } ;


 scalar_t__ FCU_FAN_RPM ;
 int FCU_RPM_ACTIVE ;
 int FCU_RPM_AVAILABLE ;
 int FCU_RPM_FAIL ;
 int FCU_RPM_READ (int) ;
 struct fcu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ fcu_read_1 (int ,int ,int,int*) ;
 int fcu_rpm_shift ;

__attribute__((used)) static int
fcu_fan_get_rpm(struct fcu_fan *fan)
{
 uint8_t reg;
 struct fcu_softc *sc;
 uint8_t buff[2] = { 0, 0 };
 uint8_t active = 0, avail = 0, fail = 0;
 int rpm;

 sc = device_get_softc(fan->dev);

 if (fan->type == FCU_FAN_RPM) {

  reg = FCU_RPM_AVAILABLE;
  if (fcu_read_1(sc->sc_dev, sc->sc_addr, reg, &avail) < 0)
   return (-1);
  if ((avail & (1 << fan->id)) == 0) {
   device_printf(fan->dev,
       "RPM Fan not available ID: %d\n", fan->id);
   return (-1);
  }

  reg = FCU_RPM_FAIL;
  if (fcu_read_1(sc->sc_dev, sc->sc_addr, reg, &fail) < 0)
   return (-1);
  if ((fail & (1 << fan->id)) != 0) {
   device_printf(fan->dev,
       "RPM Fan failed ID: %d\n", fan->id);
   return (-1);
  }

  reg = FCU_RPM_ACTIVE;
  if (fcu_read_1(sc->sc_dev, sc->sc_addr, reg, &active) < 0)
   return (-1);
  if ((active & (1 << fan->id)) == 0) {
   device_printf(fan->dev, "RPM Fan not active ID: %d\n",
          fan->id);
   return (-1);
  }
  reg = FCU_RPM_READ(fan->id);

 } else {
  device_printf(fan->dev, "Unknown fan type: %d\n", fan->type);
  return (-1);
 }


 if (fcu_read_1(sc->sc_dev, sc->sc_addr, reg, buff) < 0)
  return (-1);

 rpm = (buff[0] << (8 - fcu_rpm_shift)) | buff[1] >> fcu_rpm_shift;

 return (rpm);
}

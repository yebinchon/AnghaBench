
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct fcu_softc {int sc_addr; int sc_dev; } ;
struct TYPE_2__ {int max_rpm; int min_rpm; } ;
struct fcu_fan {scalar_t__ type; int setpoint; int dev; int id; TYPE_1__ fan; } ;


 int EIO ;
 int ENXIO ;
 scalar_t__ FCU_FAN_RPM ;
 int FCU_RPM_SET (int ) ;
 struct fcu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int fcu_rpm_shift ;
 scalar_t__ fcu_write (int ,int ,int ,unsigned char*,int) ;
 int max (int ,int) ;
 int min (int ,int) ;

__attribute__((used)) static int
fcu_fan_set_rpm(struct fcu_fan *fan, int rpm)
{
 uint8_t reg;
 struct fcu_softc *sc;
 unsigned char buf[2];

 sc = device_get_softc(fan->dev);


 rpm = max(fan->fan.min_rpm, rpm);
 rpm = min(fan->fan.max_rpm, rpm);

 if (fan->type == FCU_FAN_RPM) {
  reg = FCU_RPM_SET(fan->id);
  fan->setpoint = rpm;
 } else {
  device_printf(fan->dev, "Unknown fan type: %d\n", fan->type);
  return (ENXIO);
 }

 buf[0] = rpm >> (8 - fcu_rpm_shift);
 buf[1] = rpm << fcu_rpm_shift;

 if (fcu_write(sc->sc_dev, sc->sc_addr, reg, buf, 2) < 0)
  return (EIO);

 return (0);
}

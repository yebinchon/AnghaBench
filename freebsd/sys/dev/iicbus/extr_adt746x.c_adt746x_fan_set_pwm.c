
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct adt746x_softc {int sc_addr; int sc_dev; } ;
struct TYPE_2__ {int max_rpm; int min_rpm; } ;
struct adt746x_fan {int pwm_reg; int conf_reg; int setpoint; TYPE_1__ fan; int dev; } ;


 int ADT746X_MANUAL_MASK ;
 int adt746x_read (int ,int ,int,int*) ;
 int adt746x_write (int ,int ,int,int*) ;
 struct adt746x_softc* device_get_softc (int ) ;
 int max (int ,int) ;
 int min (int ,int) ;

__attribute__((used)) static int
adt746x_fan_set_pwm(struct adt746x_fan *fan, int pwm)
{
 uint8_t reg = 0, manual, mode = 0;
 struct adt746x_softc *sc;
 uint8_t buf;

 sc = device_get_softc(fan->dev);


 pwm = max(fan->fan.min_rpm, pwm);
 pwm = min(fan->fan.max_rpm, pwm);

 reg = fan->pwm_reg;
 mode = fan->conf_reg;





 buf = (pwm * 100 / 39) - (pwm ? 1 : 0);
 fan->setpoint = buf;


 adt746x_read(sc->sc_dev, sc->sc_addr, mode, &manual);
 manual |= ADT746X_MANUAL_MASK;
 adt746x_write(sc->sc_dev, sc->sc_addr, mode, &manual);


 adt746x_write(sc->sc_dev, sc->sc_addr, reg, &buf);

 return (0);
}

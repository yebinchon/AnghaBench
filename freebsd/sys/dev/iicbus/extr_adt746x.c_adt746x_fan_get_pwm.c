
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct adt746x_softc {int sc_addr; int sc_dev; } ;
struct adt746x_fan {int pwm_reg; int dev; } ;


 int adt746x_read (int ,int ,int,int*) ;
 struct adt746x_softc* device_get_softc (int ) ;

__attribute__((used)) static int
adt746x_fan_get_pwm(struct adt746x_fan *fan)
{
 uint8_t buf, reg;
 uint16_t pwm;
 struct adt746x_softc *sc;

 sc = device_get_softc(fan->dev);

 reg = fan->pwm_reg;

 adt746x_read(sc->sc_dev, sc->sc_addr, reg, &buf);

 pwm = (buf * 39 / 100) + (buf ? 1 : 0);
 return (pwm);
}

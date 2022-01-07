
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm1030_softc {int sc_pwm; int sc_addr; int sc_dev; } ;


 scalar_t__ adm1030_write_byte (int ,int ,int,int) ;

__attribute__((used)) static int adm1030_set(struct adm1030_softc *fan, int pwm)
{

 if (pwm > 0xF)
  pwm = 0xF;
 if (pwm < 0)
  pwm = 0;

 if (adm1030_write_byte(fan->sc_dev, fan->sc_addr, 0x22, pwm) < 0)
  return (-1);

 fan->sc_pwm = pwm;
 return (0);
}

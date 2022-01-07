
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ds13rtc_softc {int chiptype; int use_ampm; int dev; scalar_t__ secaddr; int is_binary_counter; scalar_t__ osfaddr; } ;


 int CLOCKF_SETTIME_NO_ADJ ;
 scalar_t__ DS130x_R_CONTROL ;
 scalar_t__ DS133x_R_CONTROL ;
 scalar_t__ DS1341_R_CONTROL ;
 scalar_t__ DS1388_R_CONTROL ;
 scalar_t__ DS13xx_B_HOUR_AMPM ;
 scalar_t__ DS13xx_B_STATUS_OSF ;
 scalar_t__ DS13xx_R_NONE ;
 int clock_register_flags (int ,int,int ) ;
 int clock_schedule (int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ read_reg (struct ds13rtc_softc*,scalar_t__,scalar_t__*) ;
 int write_reg (struct ds13rtc_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
ds13rtc_start(void *arg)
{
 struct ds13rtc_softc *sc;
 uint8_t ctlreg, statreg;

 sc = arg;
 switch (sc->chiptype) {
 case 140:
 case 139:
 case 137:
 case 135:
 case 132:
 case 131:
 case 130:
  ctlreg = DS130x_R_CONTROL;
  break;
 case 138:
 case 136:
  ctlreg = DS133x_R_CONTROL;
  break;
 case 134:
 case 133:
  ctlreg = DS1341_R_CONTROL;
  break;
 case 129:
  ctlreg = DS13xx_R_NONE;
  break;
 case 128:
  ctlreg = DS1388_R_CONTROL;
  break;
 default:
  device_printf(sc->dev, "missing init code for this chiptype\n");
  return;
 }
 if (ctlreg != DS13xx_R_NONE)
  write_reg(sc, ctlreg, 0);






 if (read_reg(sc, sc->osfaddr, &statreg) != 0) {
  device_printf(sc->dev, "cannot read RTC clock status bit\n");
  return;
 }
 if (statreg & DS13xx_B_STATUS_OSF) {
  device_printf(sc->dev,
      "WARNING: RTC battery failed; time is invalid\n");
 }






 if ((sc->chiptype != 135) && !sc->is_binary_counter) {
  if (read_reg(sc, sc->secaddr + 2, &statreg) != 0) {
   device_printf(sc->dev,
       "cannot read RTC clock AM/PM bit\n");
   return;
  }
  if (statreg & DS13xx_B_HOUR_AMPM)
   sc->use_ampm = 1;
 }





 clock_register_flags(sc->dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
 clock_schedule(sc->dev, 1);
}

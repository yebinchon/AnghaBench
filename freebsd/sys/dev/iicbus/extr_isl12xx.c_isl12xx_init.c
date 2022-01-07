
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct isl12xx_softc {int dev; int init_hook; } ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int ISL12XX_SR_REG ;
 int ISL12XX_SR_RTCF ;
 int clock_register_flags (int ,int,int ) ;
 int clock_schedule (int ,int) ;
 int config_intrhook_disestablish (int *) ;
 int device_printf (int ,char*) ;
 int isl12xx_read1 (struct isl12xx_softc*,int ,int*) ;

__attribute__((used)) static void
isl12xx_init(void *arg)
{
 struct isl12xx_softc *sc = arg;
 uint8_t sreg;

 config_intrhook_disestablish(&sc->init_hook);





 isl12xx_read1(sc, ISL12XX_SR_REG, &sreg);
 if (sreg & ISL12XX_SR_RTCF) {
  device_printf(sc->dev,
      "RTC clock stopped; check battery\n");
 }




 clock_register_flags(sc->dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
 clock_schedule(sc->dev, 1);
}

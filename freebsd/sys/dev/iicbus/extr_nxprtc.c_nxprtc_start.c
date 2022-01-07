
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxprtc_softc {int chiptype; int is212x; int dev; scalar_t__ use_timer; int config_hook; } ;
typedef int device_t ;


 int CLOCKF_GETTIME_NO_ADJ ;
 int CLOCKF_SETTIME_NO_TS ;
 int TMR_TICKS_SEC ;






 int clock_register_flags (int ,int,int) ;
 int clock_schedule (int ,int) ;
 int config_intrhook_disestablish (int *) ;
 struct nxprtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pcf2127_start_timer (struct nxprtc_softc*) ;
 int pcf8523_start (struct nxprtc_softc*) ;
 int pcf8523_start_timer (struct nxprtc_softc*) ;
 int pcf8563_start (struct nxprtc_softc*) ;
 int pcf8563_start_timer (struct nxprtc_softc*) ;

__attribute__((used)) static void
nxprtc_start(void *dev)
{
 struct nxprtc_softc *sc;
 int clockflags, resolution;

 sc = device_get_softc((device_t)dev);
 config_intrhook_disestablish(&sc->config_hook);


 switch (sc->chiptype) {
 case 133:
 case 130:
 case 131:
  sc->is212x = 1;
  if (pcf8523_start(sc) != 0)
   return;
  if (pcf2127_start_timer(sc) != 0) {
   device_printf(sc->dev, "cannot set up timer\n");
   return;
  }
  break;
 case 129:
  if (pcf8523_start(sc) != 0)
   return;
  if (pcf8523_start_timer(sc) != 0) {
   device_printf(sc->dev, "cannot set up timer\n");
   return;
  }
  break;
 case 132:
 case 128:
  if (pcf8563_start(sc) != 0)
   return;
  if (pcf8563_start_timer(sc) != 0) {
   device_printf(sc->dev, "cannot set up timer\n");
   return;
  }
  break;
 default:
  device_printf(sc->dev, "missing init code for this chiptype\n");
  return;
 }
 resolution = sc->use_timer ? 1000000 / TMR_TICKS_SEC : 1000000 / 2;
 clockflags = CLOCKF_GETTIME_NO_ADJ | CLOCKF_SETTIME_NO_TS;
 clock_register_flags(sc->dev, resolution, clockflags);
 clock_schedule(sc->dev, 495000000);
}

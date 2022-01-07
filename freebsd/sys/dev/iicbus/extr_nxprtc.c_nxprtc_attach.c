
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ich_arg; int ich_func; } ;
struct nxprtc_softc {int chiptype; int use_timer; TYPE_1__ config_hook; int tmcaddr; int secaddr; int busdev; void* dev; } ;
typedef void* device_t ;


 int ENOMEM ;
 int ENXIO ;
 int PCF8523_R_SECOND ;
 int PCF8523_R_TMR_A_COUNT ;
 int PCF8563_R_SECOND ;
 int PCF8563_R_TMR_COUNT ;






 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int device_get_parent (void*) ;
 struct nxprtc_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int nxprtc_get_chiptype (void*) ;
 int nxprtc_start ;

__attribute__((used)) static int
nxprtc_attach(device_t dev)
{
 struct nxprtc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->busdev = device_get_parent(dev);


 sc->chiptype = nxprtc_get_chiptype(dev);


 switch (sc->chiptype) {
 case 133:
 case 130:
 case 131:
 case 129:
  sc->secaddr = PCF8523_R_SECOND;
  sc->tmcaddr = PCF8523_R_TMR_A_COUNT;
  sc->use_timer = 1;
  break;
 case 132:
 case 128:
  sc->secaddr = PCF8563_R_SECOND;
  sc->tmcaddr = PCF8563_R_TMR_COUNT;
  sc->use_timer = 1;
  break;
 default:
  device_printf(dev, "impossible: cannot determine chip type\n");
  return (ENXIO);
 }





 sc->config_hook.ich_func = nxprtc_start;
 sc->config_hook.ich_arg = dev;
 if (config_intrhook_establish(&sc->config_hook) != 0)
  return (ENOMEM);

 return (0);
}

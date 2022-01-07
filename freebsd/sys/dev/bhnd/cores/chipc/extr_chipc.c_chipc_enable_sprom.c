
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvram_src; } ;
struct chipc_softc {int sprom_refcnt; TYPE_1__ caps; } ;
typedef int device_t ;




 int CHIPC_LOCK (struct chipc_softc*) ;
 int CHIPC_UNLOCK (struct chipc_softc*) ;
 int chipc_enable_otp_power (struct chipc_softc*) ;
 int chipc_enable_sprom_pins (struct chipc_softc*) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_enable_sprom(device_t dev)
{
 struct chipc_softc *sc;
 int error;

 sc = device_get_softc(dev);
 CHIPC_LOCK(sc);


 if (sc->sprom_refcnt >= 1) {
  sc->sprom_refcnt++;
  CHIPC_UNLOCK(sc);

  return (0);
 }

 switch (sc->caps.nvram_src) {
 case 128:
  error = chipc_enable_sprom_pins(sc);
  break;
 case 129:
  error = chipc_enable_otp_power(sc);
  break;
 default:
  error = 0;
  break;
 }


 if (error == 0)
  sc->sprom_refcnt++;

 CHIPC_UNLOCK(sc);
 return (error);
}

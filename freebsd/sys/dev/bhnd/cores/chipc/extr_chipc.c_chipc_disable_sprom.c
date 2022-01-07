
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvram_src; } ;
struct chipc_softc {scalar_t__ sprom_refcnt; TYPE_1__ caps; } ;
typedef int device_t ;




 int CHIPC_LOCK (struct chipc_softc*) ;
 int CHIPC_UNLOCK (struct chipc_softc*) ;
 int KASSERT (int,char*) ;
 int chipc_disable_otp_power (struct chipc_softc*) ;
 int chipc_disable_sprom_pins (struct chipc_softc*) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
chipc_disable_sprom(device_t dev)
{
 struct chipc_softc *sc;

 sc = device_get_softc(dev);
 CHIPC_LOCK(sc);


 KASSERT(sc->sprom_refcnt > 0, ("sprom refcnt overrelease"));
 sc->sprom_refcnt--;
 if (sc->sprom_refcnt > 0) {
  CHIPC_UNLOCK(sc);
  return;
 }

 switch (sc->caps.nvram_src) {
 case 128:
  chipc_disable_sprom_pins(sc);
  break;
 case 129:
  chipc_disable_otp_power(sc);
  break;
 default:
  break;
 }


 CHIPC_UNLOCK(sc);
}

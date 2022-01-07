
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lance_softc {int dummy; } ;
struct TYPE_2__ {struct lance_softc lsc; } ;
struct le_isa_softc {int * sc_rres; int sc_rdp; int sc_rap; TYPE_1__ sc_am7990; } ;
struct le_isa_param {int rdp; int rap; int iosize; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 scalar_t__ LE_C0_STOP ;
 int LE_CSR0 ;
 int LE_CSR3 ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct le_isa_softc* device_get_softc (int ) ;
 scalar_t__ le_isa_rdcsr (struct lance_softc*,int ) ;
 int le_isa_wrcsr (struct lance_softc*,int ,scalar_t__) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
le_isa_probe_legacy(device_t dev, const struct le_isa_param *leip)
{
 struct le_isa_softc *lesc;
 struct lance_softc *sc;
 int error, i;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 i = 0;
 lesc->sc_rres = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &i,
     leip->iosize, RF_ACTIVE);
 if (lesc->sc_rres == ((void*)0))
  return (ENXIO);
 lesc->sc_rap = leip->rap;
 lesc->sc_rdp = leip->rdp;


 le_isa_wrcsr(sc, LE_CSR0, LE_C0_STOP);
 DELAY(100);
 if (le_isa_rdcsr(sc, LE_CSR0) != LE_C0_STOP) {
  error = ENXIO;
  goto fail;
 }
 le_isa_wrcsr(sc, LE_CSR3, 0);
 error = 0;

 fail:
 bus_release_resource(dev, SYS_RES_IOPORT,
     rman_get_rid(lesc->sc_rres), lesc->sc_rres);
 return (error);
}

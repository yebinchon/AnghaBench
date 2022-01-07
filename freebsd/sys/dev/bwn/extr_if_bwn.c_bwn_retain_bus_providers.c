
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_caps {scalar_t__ pmu; } ;
struct bwn_softc {int sc_dev; int * sc_pmu; int * sc_gpio; int * sc_chipc; } ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (int *) ;
 int BHND_SERVICE_CHIPC ;
 int BHND_SERVICE_GPIO ;
 int BHND_SERVICE_PMU ;
 int ENXIO ;
 void* bhnd_retain_provider (int ,int ) ;
 int bwn_release_bus_providers (struct bwn_softc*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwn_retain_bus_providers(struct bwn_softc *sc)
{
 struct chipc_caps *ccaps;

 sc->sc_chipc = bhnd_retain_provider(sc->sc_dev, BHND_SERVICE_CHIPC);
 if (sc->sc_chipc == ((void*)0)) {
  device_printf(sc->sc_dev, "ChipCommon device not found\n");
  goto failed;
 }

 ccaps = BHND_CHIPC_GET_CAPS(sc->sc_chipc);

 sc->sc_gpio = bhnd_retain_provider(sc->sc_dev, BHND_SERVICE_GPIO);
 if (sc->sc_gpio == ((void*)0)) {
  device_printf(sc->sc_dev, "GPIO device not found\n");
  goto failed;
 }

 if (ccaps->pmu) {
  sc->sc_pmu = bhnd_retain_provider(sc->sc_dev, BHND_SERVICE_PMU);
  if (sc->sc_pmu == ((void*)0)) {
   device_printf(sc->sc_dev, "PMU device not found\n");
   goto failed;
  }
 }

 return (0);

failed:
 bwn_release_bus_providers(sc);
 return (ENXIO);
}

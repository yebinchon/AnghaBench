
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twsi_softc {int have_intr; int intrhand; int * res; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ bus_setup_intr (void*,int ,int,int *,int ,struct twsi_softc*,int *) ;
 struct twsi_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int twsi_intr ;

__attribute__((used)) static void
twsi_intr_start(void *pdev)
{
 struct twsi_softc *sc;

 sc = device_get_softc(pdev);

 if ((bus_setup_intr(pdev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
       ((void*)0), twsi_intr, sc, &sc->intrhand)))
  device_printf(pdev, "unable to register interrupt handler\n");

 sc->have_intr = 1;
}

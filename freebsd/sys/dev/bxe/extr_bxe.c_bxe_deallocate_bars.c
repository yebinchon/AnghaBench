
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* bar; int dev; } ;
struct TYPE_2__ {int * resource; int rid; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,int ) ;
 int DBG_LOAD ;
 int MAX_BARS ;
 int PCIR_BAR (int) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
bxe_deallocate_bars(struct bxe_softc *sc)
{
    int i;

    for (i = 0; i < MAX_BARS; i++) {
        if (sc->bar[i].resource != ((void*)0)) {
            bus_release_resource(sc->dev,
                                 SYS_RES_MEMORY,
                                 sc->bar[i].rid,
                                 sc->bar[i].resource);
            BLOGD(sc, DBG_LOAD, "Released PCI BAR%d [%02x] memory\n",
                  i, PCIR_BAR(i));
        }
    }
}

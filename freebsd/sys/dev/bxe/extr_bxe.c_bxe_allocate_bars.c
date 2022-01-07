
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uintmax_t ;
typedef int u_int ;
struct bxe_softc {TYPE_1__* bar; int dev; } ;
struct TYPE_2__ {scalar_t__ kva; int * resource; int handle; int tag; int rid; } ;


 int BLOGI (struct bxe_softc*,char*,int,int ,int ,int ,int ,int ) ;
 int MAX_BARS ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_end (int *) ;
 int rman_get_size (int *) ;
 int rman_get_start (int *) ;
 scalar_t__ rman_get_virtual (int *) ;

__attribute__((used)) static int
bxe_allocate_bars(struct bxe_softc *sc)
{
    u_int flags;
    int i;

    memset(sc->bar, 0, sizeof(sc->bar));

    for (i = 0; i < MAX_BARS; i++) {



        if ((i != 0) && (i != 2) && (i != 4)) {
            continue;
        }

        sc->bar[i].rid = PCIR_BAR(i);

        flags = RF_ACTIVE;
        if (i == 0) {
            flags |= RF_SHAREABLE;
        }

        if ((sc->bar[i].resource =
             bus_alloc_resource_any(sc->dev,
                                    SYS_RES_MEMORY,
                                    &sc->bar[i].rid,
                                    flags)) == ((void*)0)) {
            return (0);
        }

        sc->bar[i].tag = rman_get_bustag(sc->bar[i].resource);
        sc->bar[i].handle = rman_get_bushandle(sc->bar[i].resource);
        sc->bar[i].kva = (vm_offset_t)rman_get_virtual(sc->bar[i].resource);

        BLOGI(sc, "PCI BAR%d [%02x] memory allocated: %#jx-%#jx (%jd) -> %#jx\n",
              i, PCIR_BAR(i),
              rman_get_start(sc->bar[i].resource),
              rman_get_end(sc->bar[i].resource),
              rman_get_size(sc->bar[i].resource),
              (uintmax_t)sc->bar[i].kva);
    }

    return (0);
}

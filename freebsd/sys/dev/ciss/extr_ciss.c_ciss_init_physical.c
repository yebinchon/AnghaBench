
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ciss_device_address {int dummy; } ciss_device_address ;
struct ciss_softc {int ciss_max_logical_bus; int ciss_max_physical_bus; int ** ciss_physical; TYPE_3__* ciss_controllers; TYPE_1__* ciss_cfg; } ;
struct ciss_pdrive {int dummy; } ;
struct ciss_lun_report {TYPE_3__* lun; int list_size; } ;
struct TYPE_5__ {scalar_t__ extra_address; int bus; } ;
struct TYPE_6__ {TYPE_2__ physical; } ;
struct TYPE_4__ {int max_physical_supported; } ;


 int CISS_EXTRA_BUS2 (scalar_t__) ;
 int CISS_MALLOC_CLASS ;
 int CISS_MAX_PHYSTGT ;
 int CISS_OPCODE_REPORT_PHYSICAL_LUNS ;
 int ENOMEM ;
 int ENXIO ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ bootverbose ;
 int ciss_filter_physical (struct ciss_softc*,struct ciss_lun_report*) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 struct ciss_lun_report* ciss_report_luns (struct ciss_softc*,int ,int ) ;
 int debug_called (int) ;
 int free (struct ciss_lun_report*,int ) ;
 void* malloc (int,int ,int) ;
 void* max (int,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
ciss_init_physical(struct ciss_softc *sc)
{
    struct ciss_lun_report *cll;
    int error = 0, i;
    int nphys;
    int bus, target;

    debug_called(1);

    bus = 0;
    target = 0;

    cll = ciss_report_luns(sc, CISS_OPCODE_REPORT_PHYSICAL_LUNS,
      sc->ciss_cfg->max_physical_supported);
    if (cll == ((void*)0)) {
 error = ENXIO;
 goto out;
    }

    nphys = (ntohl(cll->list_size) / sizeof(union ciss_device_address));

    if (bootverbose) {
 ciss_printf(sc, "%d physical device%s\n",
     nphys, (nphys > 1 || nphys == 0) ? "s" : "");
    }
    sc->ciss_max_logical_bus = 1;
    for (i = 0; i < nphys; i++) {
 if (cll->lun[i].physical.extra_address == 0) {
     bus = cll->lun[i].physical.bus;
     sc->ciss_max_logical_bus = max(sc->ciss_max_logical_bus, bus) + 1;
 } else {
     bus = CISS_EXTRA_BUS2(cll->lun[i].physical.extra_address);
     sc->ciss_max_physical_bus = max(sc->ciss_max_physical_bus, bus);
 }
    }

    sc->ciss_controllers =
 malloc(sc->ciss_max_logical_bus * sizeof (union ciss_device_address),
        CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO);

    if (sc->ciss_controllers == ((void*)0)) {
 ciss_printf(sc, "Could not allocate memory for controller map\n");
 error = ENOMEM;
 goto out;
    }


    for (i = 0; i < nphys; i++) {
 if (cll->lun[i].physical.extra_address == 0) {
     sc->ciss_controllers[cll->lun[i].physical.bus] = cll->lun[i];
 }
    }

    sc->ciss_physical =
 malloc(sc->ciss_max_physical_bus * sizeof(struct ciss_pdrive *),
        CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO);
    if (sc->ciss_physical == ((void*)0)) {
 ciss_printf(sc, "Could not allocate memory for physical device map\n");
 error = ENOMEM;
 goto out;
    }

    for (i = 0; i < sc->ciss_max_physical_bus; i++) {
 sc->ciss_physical[i] =
     malloc(sizeof(struct ciss_pdrive) * CISS_MAX_PHYSTGT,
     CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO);
 if (sc->ciss_physical[i] == ((void*)0)) {
     ciss_printf(sc, "Could not allocate memory for target map\n");
     error = ENOMEM;
     goto out;
 }
    }

    ciss_filter_physical(sc, cll);

out:
    if (cll != ((void*)0))
 free(cll, CISS_MALLOC_CLASS);

    return(error);
}

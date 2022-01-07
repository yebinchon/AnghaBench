
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ t_Error ;
struct TYPE_6__ {int minorRev; int majorRev; } ;
typedef TYPE_1__ t_BmRevisionInfo ;
struct TYPE_7__ {int totalNumOfBuffers; uintptr_t errIrq; int partNumOfPools; scalar_t__ partBpidBase; struct bman_softc* h_App; int f_Exception; int baseAddress; int guestId; } ;
typedef TYPE_2__ t_BmParam ;
struct bman_softc {int * sc_bh; int * sc_ires; int * sc_rres; scalar_t__ sc_irid; int sc_dev; scalar_t__ sc_rrid; } ;
typedef int device_t ;
typedef int bp ;


 int BMAN_CCSR_SIZE ;
 int BMAN_MAX_BUFFERS ;
 int * BM_Config (TYPE_2__*) ;
 scalar_t__ BM_ConfigFbprThreshold (int *,int) ;
 scalar_t__ BM_GetRevision (int *,TYPE_1__*) ;
 scalar_t__ BM_Init (int *) ;
 int BM_MAX_NUM_OF_POOLS ;
 int ENXIO ;
 scalar_t__ E_OK ;
 int NCSW_MASTER_ID ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ XX_MallocSmartInit () ;
 int bman_detach (int ) ;
 int bman_exception ;
 struct bman_softc* bman_sc ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int * bus_alloc_resource_anywhere (int ,int ,scalar_t__*,int ,int) ;
 struct bman_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int rman_get_bushandle (int *) ;

int
bman_attach(device_t dev)
{
 struct bman_softc *sc;
 t_BmRevisionInfo rev;
 t_Error error;
 t_BmParam bp;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 bman_sc = sc;


 if (XX_MallocSmartInit() != E_OK)
  return (ENXIO);


 sc->sc_rrid = 0;
 sc->sc_rres = bus_alloc_resource_anywhere(dev, SYS_RES_MEMORY,
     &sc->sc_rrid, BMAN_CCSR_SIZE, RF_ACTIVE);
 if (sc->sc_rres == ((void*)0))
  return (ENXIO);

 sc->sc_irid = 0;
 sc->sc_ires = bus_alloc_resource_any(sc->sc_dev, SYS_RES_IRQ,
     &sc->sc_irid, RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_ires == ((void*)0))
  goto err;


 memset(&bp, 0, sizeof(bp));
 bp.guestId = NCSW_MASTER_ID;
 bp.baseAddress = rman_get_bushandle(sc->sc_rres);
 bp.totalNumOfBuffers = BMAN_MAX_BUFFERS;
 bp.f_Exception = bman_exception;
 bp.h_App = sc;
 bp.errIrq = (uintptr_t)sc->sc_ires;
 bp.partBpidBase = 0;
 bp.partNumOfPools = BM_MAX_NUM_OF_POOLS;

 sc->sc_bh = BM_Config(&bp);
 if (sc->sc_bh == ((void*)0))
  goto err;


 error = BM_ConfigFbprThreshold(sc->sc_bh, (BMAN_MAX_BUFFERS / 8) / 20);
 if (error != E_OK)
  goto err;

 error = BM_Init(sc->sc_bh);
 if (error != E_OK)
  goto err;

 error = BM_GetRevision(sc->sc_bh, &rev);
 if (error != E_OK)
  goto err;

 device_printf(dev, "Hardware version: %d.%d.\n",
     rev.majorRev, rev.minorRev);

 return (0);

err:
 bman_detach(dev);
 return (ENXIO);
}

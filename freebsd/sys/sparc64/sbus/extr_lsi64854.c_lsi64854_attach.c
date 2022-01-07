
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ncr53c9x_softc {int sc_maxxfer; int sc_lock; } ;
struct lsi64854_softc {int sc_channel; int sc_rev; int sc_burst; int sc_dev; int sc_buffer_dmat; int sc_dmamap; int sc_maxdmasize; int sc_parent_dmat; int * setup; int reset; int intr; struct ncr53c9x_softc* sc_client; } ;
typedef int bus_dma_lock_t ;


 int BOUNDARY ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;




 int DMAREV_HME ;

 int DPRINTF (int ,char*) ;
 int ENXIO ;



 int L64854_DEVID ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int LDB_ANY ;
 int MAX_DMA_SZ ;
 int NCR_LOCK_INITIALIZED (struct ncr53c9x_softc*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,void*,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int * busdma_lock_mutex ;
 int device_printf (int ,char*) ;
 int lsi64854_enet_intr ;
 int lsi64854_pp_intr ;
 int lsi64854_reset ;
 int lsi64854_scsi_intr ;
 int * lsi64854_setup ;
 int * lsi64854_setup_pp ;
 int printf (char*,...) ;

int
lsi64854_attach(struct lsi64854_softc *sc)
{
 bus_dma_lock_t *lockfunc;
 struct ncr53c9x_softc *nsc;
 void *lockfuncarg;
 uint32_t csr;
 int error;

 lockfunc = ((void*)0);
 lockfuncarg = ((void*)0);
 sc->sc_maxdmasize = MAX_DMA_SZ;

 switch (sc->sc_channel) {
 case 128:
  nsc = sc->sc_client;
  if (NCR_LOCK_INITIALIZED(nsc) == 0) {
   device_printf(sc->sc_dev, "mutex not initialized\n");
   return (ENXIO);
  }
  lockfunc = busdma_lock_mutex;
  lockfuncarg = &nsc->sc_lock;
  sc->sc_maxdmasize = nsc->sc_maxxfer;
  sc->intr = lsi64854_scsi_intr;
  sc->setup = lsi64854_setup;
  break;
 case 130:
  sc->intr = lsi64854_enet_intr;
  break;
 case 129:
  sc->intr = lsi64854_pp_intr;
  sc->setup = lsi64854_setup_pp;
  break;
 default:
  device_printf(sc->sc_dev, "unknown channel\n");
 }
 sc->reset = lsi64854_reset;

 if (sc->setup != ((void*)0)) {
  error = bus_dma_tag_create(
      sc->sc_parent_dmat,
      1, BOUNDARY,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sc->sc_maxdmasize,
      1,
      sc->sc_maxdmasize,
      BUS_DMA_ALLOCNOW,
      lockfunc, lockfuncarg,
      &sc->sc_buffer_dmat);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "cannot allocate buffer DMA tag\n");
   return (error);
  }

  error = bus_dmamap_create(sc->sc_buffer_dmat, 0,
      &sc->sc_dmamap);
  if (error != 0) {
   device_printf(sc->sc_dev, "DMA map create failed\n");
   bus_dma_tag_destroy(sc->sc_buffer_dmat);
   return (error);
  }
 }

 csr = L64854_GCSR(sc);
 sc->sc_rev = csr & L64854_DEVID;
 if (sc->sc_rev == DMAREV_HME)
  return (0);
 device_printf(sc->sc_dev, "DMA rev. ");
 switch (sc->sc_rev) {
 case 135:
  printf("0");
  break;
 case 132:
  printf("ESC");
  break;
 case 134:
  printf("1");
  break;
 case 131:
  printf("1+");
  break;
 case 133:
  printf("2");
  break;
 default:
  printf("unknown (0x%x)", sc->sc_rev);
 }

 DPRINTF(LDB_ANY, (", burst 0x%x, csr 0x%x", sc->sc_burst, csr));
 printf("\n");

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
struct TYPE_3__ {struct mwl_rxdesc* dd_desc; struct mwl_rxbuf* dd_bufptr; } ;
struct mwl_softc {int sc_rxmemsize; int sc_nrxfree; int sc_rxfree; scalar_t__ sc_rxmem; int sc_rxbuf; TYPE_1__ sc_rxdma; int sc_dev; int sc_rxmem_paddr; int sc_rxmap; int sc_rxdmat; int sc_dmat; } ;
struct mwl_rxdesc {int dummy; } ;
struct mwl_rxbuf {int * bf_data; int bf_daddr; struct mwl_rxdesc* bf_desc; } ;
struct mwl_jumbo {int dummy; } ;
typedef int * caddr_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DS2PHYS (TYPE_1__*,struct mwl_rxdesc*) ;
 int MWL_AGGR_SIZE ;
 struct mwl_jumbo* MWL_JUMBO_DATA2BUF (int *) ;
 int M_MWLDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct mwl_jumbo*,int ) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct mwl_rxbuf*,int ) ;
 int bf_list ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*,...) ;
 struct mwl_rxbuf* malloc (int,int ,int) ;
 int mwl_desc_setup (struct mwl_softc*,char*,TYPE_1__*,int,int,int,int) ;
 int mwl_load_cb ;
 int mwl_rxbuf ;
 int mwl_rxdesc ;
 int next ;
 int roundup (int ,int ) ;

__attribute__((used)) static int
mwl_rxdma_setup(struct mwl_softc *sc)
{
 int error, jumbosize, bsize, i;
 struct mwl_rxbuf *bf;
 struct mwl_jumbo *rbuf;
 struct mwl_rxdesc *ds;
 caddr_t data;

 error = mwl_desc_setup(sc, "rx", &sc->sc_rxdma,
   mwl_rxdesc, sizeof(struct mwl_rxbuf),
   1, sizeof(struct mwl_rxdesc));
 if (error != 0)
  return error;
 if (mwl_rxbuf < 2*mwl_rxdesc) {
  device_printf(sc->sc_dev,
      "too few rx dma buffers (%d); increasing to %d\n",
      mwl_rxbuf, 2*mwl_rxdesc);
  mwl_rxbuf = 2*mwl_rxdesc;
 }
 jumbosize = roundup(MWL_AGGR_SIZE, PAGE_SIZE);
 sc->sc_rxmemsize = mwl_rxbuf*jumbosize;

 error = bus_dma_tag_create(sc->sc_dmat,
         PAGE_SIZE, 0,
         BUS_SPACE_MAXADDR_32BIT,
         BUS_SPACE_MAXADDR,
         ((void*)0), ((void*)0),
         sc->sc_rxmemsize,
         1,
         sc->sc_rxmemsize,
         BUS_DMA_ALLOCNOW,
         ((void*)0),
         ((void*)0),
         &sc->sc_rxdmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create rx DMA tag\n");
  return error;
 }

 error = bus_dmamem_alloc(sc->sc_rxdmat, (void**) &sc->sc_rxmem,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
     &sc->sc_rxmap);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not alloc %ju bytes of rx DMA memory\n",
      (uintmax_t) sc->sc_rxmemsize);
  return error;
 }

 error = bus_dmamap_load(sc->sc_rxdmat, sc->sc_rxmap,
    sc->sc_rxmem, sc->sc_rxmemsize,
    mwl_load_cb, &sc->sc_rxmem_paddr,
    BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load rx DMA map\n");
  return error;
 }




 bsize = mwl_rxdesc * sizeof(struct mwl_rxbuf);
 bf = malloc(bsize, M_MWLDEV, M_NOWAIT | M_ZERO);
 if (bf == ((void*)0)) {
  device_printf(sc->sc_dev, "malloc of %u rx buffers failed\n", bsize);
  return error;
 }
 sc->sc_rxdma.dd_bufptr = bf;

 STAILQ_INIT(&sc->sc_rxbuf);
 ds = sc->sc_rxdma.dd_desc;
 for (i = 0; i < mwl_rxdesc; i++, bf++, ds++) {
  bf->bf_desc = ds;
  bf->bf_daddr = DS2PHYS(&sc->sc_rxdma, ds);

  bf->bf_data = ((uint8_t *)sc->sc_rxmem) + (i*jumbosize);

  STAILQ_INSERT_TAIL(&sc->sc_rxbuf, bf, bf_list);
 }




 SLIST_INIT(&sc->sc_rxfree);
 for (; i < mwl_rxbuf; i++) {
  data = ((uint8_t *)sc->sc_rxmem) + (i*jumbosize);
  rbuf = MWL_JUMBO_DATA2BUF(data);
  SLIST_INSERT_HEAD(&sc->sc_rxfree, rbuf, next);
  sc->sc_nrxfree++;
 }
 return 0;
}

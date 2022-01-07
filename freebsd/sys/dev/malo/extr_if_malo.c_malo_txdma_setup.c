
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct malo_txdesc* dd_desc; struct malo_txbuf* dd_bufptr; } ;
struct malo_txq {scalar_t__ nfree; int free; TYPE_1__ dma; } ;
struct malo_txdesc {int dummy; } ;
struct malo_txbuf {int bf_dmamap; int bf_daddr; struct malo_txdesc* bf_desc; } ;
struct malo_softc {int malo_dev; int malo_dmat; } ;


 int BUS_DMA_NOWAIT ;
 int DS2PHYS (TYPE_1__*,struct malo_txdesc*) ;
 int ENOMEM ;
 int MALO_TXDESC ;
 int M_MALODEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct malo_txbuf*,int ) ;
 int bf_list ;
 int bus_dmamap_create (int ,int ,int *) ;
 int device_printf (int ,char*,int,...) ;
 struct malo_txbuf* malloc (int,int ,int) ;
 int malo_desc_setup (struct malo_softc*,char*,TYPE_1__*,int,int,int ,int) ;
 int malo_txbuf ;

__attribute__((used)) static int
malo_txdma_setup(struct malo_softc *sc, struct malo_txq *txq)
{
 int error, bsize, i;
 struct malo_txbuf *bf;
 struct malo_txdesc *ds;

 error = malo_desc_setup(sc, "tx", &txq->dma,
     malo_txbuf, sizeof(struct malo_txbuf),
     MALO_TXDESC, sizeof(struct malo_txdesc));
 if (error != 0)
  return error;


 bsize = malo_txbuf * sizeof(struct malo_txbuf);
 bf = malloc(bsize, M_MALODEV, M_NOWAIT | M_ZERO);
 if (bf == ((void*)0)) {
  device_printf(sc->malo_dev, "malloc of %u tx buffers failed\n",
      malo_txbuf);
  return ENOMEM;
 }
 txq->dma.dd_bufptr = bf;

 STAILQ_INIT(&txq->free);
 txq->nfree = 0;
 ds = txq->dma.dd_desc;
 for (i = 0; i < malo_txbuf; i++, bf++, ds += MALO_TXDESC) {
  bf->bf_desc = ds;
  bf->bf_daddr = DS2PHYS(&txq->dma, ds);
  error = bus_dmamap_create(sc->malo_dmat, BUS_DMA_NOWAIT,
      &bf->bf_dmamap);
  if (error != 0) {
   device_printf(sc->malo_dev,
       "unable to create dmamap for tx "
       "buffer %u, error %u\n", i, error);
   return error;
  }
  STAILQ_INSERT_TAIL(&txq->free, bf, bf_list);
  txq->nfree++;
 }

 return 0;
}

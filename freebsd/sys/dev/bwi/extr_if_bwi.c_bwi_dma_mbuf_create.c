
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bwi_txbuf_data {TYPE_1__* tbd_buf; } ;
struct bwi_rxbuf_data {int rbd_tmp_dmap; TYPE_2__* rbd_buf; } ;
struct bwi_softc {int sc_buf_dtag; int sc_dev; struct bwi_txbuf_data* sc_tx_bdata; int sc_parent_dtag; struct bwi_rxbuf_data sc_rx_bdata; } ;
struct TYPE_4__ {int rb_dmap; } ;
struct TYPE_3__ {int tb_dmap; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BWI_RX_NDESC ;
 int BWI_TX_NDESC ;
 int BWI_TX_NRING ;
 int MCLBYTES ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bwi_dma_mbuf_destroy (struct bwi_softc*,int,int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bwi_dma_mbuf_create(struct bwi_softc *sc)
{
 struct bwi_rxbuf_data *rbd = &sc->sc_rx_bdata;
 int i, j, k, ntx, error;




 error = bus_dma_tag_create(sc->sc_parent_dtag,
    1,
    0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    MCLBYTES,
    1,
    MCLBYTES,
    BUS_DMA_ALLOCNOW,
    ((void*)0), ((void*)0),
    &sc->sc_buf_dtag);
 if (error) {
  device_printf(sc->sc_dev, "can't create mbuf DMA tag\n");
  return error;
 }

 ntx = 0;




 for (i = 0; i < BWI_TX_NRING; ++i) {
  struct bwi_txbuf_data *tbd = &sc->sc_tx_bdata[i];

  for (j = 0; j < BWI_TX_NDESC; ++j) {
   error = bus_dmamap_create(sc->sc_buf_dtag, 0,
        &tbd->tbd_buf[j].tb_dmap);
   if (error) {
    device_printf(sc->sc_dev, "can't create "
           "%dth tbd, %dth DMA map\n", i, j);

    ntx = i;
    for (k = 0; k < j; ++k) {
     bus_dmamap_destroy(sc->sc_buf_dtag,
      tbd->tbd_buf[k].tb_dmap);
    }
    goto fail;
   }
  }
 }
 ntx = BWI_TX_NRING;




 error = bus_dmamap_create(sc->sc_buf_dtag, 0,
      &rbd->rbd_tmp_dmap);
 if (error) {
  device_printf(sc->sc_dev,
         "can't create spare RX buf DMA map\n");
  goto fail;
 }

 for (j = 0; j < BWI_RX_NDESC; ++j) {
  error = bus_dmamap_create(sc->sc_buf_dtag, 0,
       &rbd->rbd_buf[j].rb_dmap);
  if (error) {
   device_printf(sc->sc_dev, "can't create %dth "
          "RX buf DMA map\n", j);

   for (k = 0; k < j; ++k) {
    bus_dmamap_destroy(sc->sc_buf_dtag,
     rbd->rbd_buf[j].rb_dmap);
   }
   bus_dmamap_destroy(sc->sc_buf_dtag,
        rbd->rbd_tmp_dmap);
   goto fail;
  }
 }

 return 0;
fail:
 bwi_dma_mbuf_destroy(sc, ntx, 0);
 return error;
}

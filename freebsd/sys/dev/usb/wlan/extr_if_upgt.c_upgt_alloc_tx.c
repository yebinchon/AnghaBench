
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct upgt_softc {int sc_tx_inactive; scalar_t__ sc_tx_dma_buf; struct upgt_data* sc_tx_data; int sc_tx_pending; int sc_tx_active; } ;
struct upgt_data {int * buf; } ;


 int MCLBYTES ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct upgt_data*,int ) ;
 int UPGT_STAT_INC (struct upgt_softc*,int ) ;
 int UPGT_TX_MAXCOUNT ;
 int next ;
 int st_tx_inactive ;

__attribute__((used)) static int
upgt_alloc_tx(struct upgt_softc *sc)
{
 int i;

 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 for (i = 0; i < UPGT_TX_MAXCOUNT; i++) {
  struct upgt_data *data = &sc->sc_tx_data[i];
  data->buf = ((uint8_t *)sc->sc_tx_dma_buf) + (i * MCLBYTES);
  STAILQ_INSERT_TAIL(&sc->sc_tx_inactive, data, next);
  UPGT_STAT_INC(sc, st_tx_inactive);
 }

 return (0);
}

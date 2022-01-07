
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * entry; int dma; } ;
struct TYPE_5__ {int mtx; int * br; } ;
struct mxge_slice_state {TYPE_2__ rx_done; TYPE_1__ tx; int * fw_stats; int fw_stats_dma; } ;
struct TYPE_7__ {int num_slices; struct mxge_slice_state* ss; } ;
typedef TYPE_3__ mxge_softc_t ;


 int M_DEVBUF ;
 int drbr_free (int *,int ) ;
 int free (struct mxge_slice_state*,int ) ;
 int mtx_destroy (int *) ;
 int mxge_dma_free (int *) ;

__attribute__((used)) static void
mxge_free_slices(mxge_softc_t *sc)
{
 struct mxge_slice_state *ss;
 int i;


 if (sc->ss == ((void*)0))
  return;

 for (i = 0; i < sc->num_slices; i++) {
  ss = &sc->ss[i];
  if (ss->fw_stats != ((void*)0)) {
   mxge_dma_free(&ss->fw_stats_dma);
   ss->fw_stats = ((void*)0);






   mtx_destroy(&ss->tx.mtx);
  }
  if (ss->rx_done.entry != ((void*)0)) {
   mxge_dma_free(&ss->rx_done.dma);
   ss->rx_done.entry = ((void*)0);
  }
 }
 free(sc->ss, M_DEVBUF);
 sc->ss = ((void*)0);
}

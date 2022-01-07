
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int * an_tx_fids; } ;
struct an_softc {int * an_flash_buffer; int an_stat_ch; TYPE_1__ an_rdata; int mpi350; struct ifnet* an_ifp; scalar_t__ an_gone; } ;


 int AN_CMD_DEALLOC_MEM ;
 int AN_CMD_DISABLE ;
 int AN_CMD_FORCE_SYNCLOSS ;
 int AN_INT_EN (int ) ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_TX_RING_CNT ;
 int CSR_WRITE_2 (struct an_softc*,int ,int ) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int M_DEVBUF ;
 int an_cmd (struct an_softc*,int ,int ) ;
 int callout_stop (int *) ;
 int free (int *,int ) ;

void
an_stop(struct an_softc *sc)
{
 struct ifnet *ifp;
 int i;

 AN_LOCK_ASSERT(sc);

 if (sc->an_gone)
  return;

 ifp = sc->an_ifp;

 an_cmd(sc, AN_CMD_FORCE_SYNCLOSS, 0);
 CSR_WRITE_2(sc, AN_INT_EN(sc->mpi350), 0);
 an_cmd(sc, AN_CMD_DISABLE, 0);

 for (i = 0; i < AN_TX_RING_CNT; i++)
  an_cmd(sc, AN_CMD_DEALLOC_MEM, sc->an_rdata.an_tx_fids[i]);

 callout_stop(&sc->an_stat_ch);

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING|IFF_DRV_OACTIVE);

 if (sc->an_flash_buffer) {
  free(sc->an_flash_buffer, M_DEVBUF);
  sc->an_flash_buffer = ((void*)0);
 }
}

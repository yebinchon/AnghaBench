
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ti_idx; } ;
struct TYPE_5__ {scalar_t__ ti_idx; } ;
struct TYPE_4__ {scalar_t__ ti_idx; } ;
struct ti_softc {int ti_watchdog; int ti_tx_saved_considx; TYPE_3__ ti_tx_considx; TYPE_2__ ti_return_prodidx; TYPE_1__ ti_ev_prodidx; struct ifnet* ti_ifp; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifnet {int if_drv_flags; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int TI_CMD_CODE_STACK_DOWN ;
 int TI_CMD_HOST_STATE ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int TI_MB_HOSTINTR ;
 int TI_TXCONS_UNSET ;
 int callout_stop (int *) ;
 scalar_t__ ti_chipinit (struct ti_softc*) ;
 int ti_free_rx_ring_jumbo (struct ti_softc*) ;
 int ti_free_rx_ring_mini (struct ti_softc*) ;
 int ti_free_rx_ring_std (struct ti_softc*) ;
 int ti_free_tx_ring (struct ti_softc*) ;
 int ti_mem_zero (struct ti_softc*,int,int) ;

__attribute__((used)) static void
ti_stop(struct ti_softc *sc)
{
 struct ifnet *ifp;
 struct ti_cmd_desc cmd;

 TI_LOCK_ASSERT(sc);

 ifp = sc->ti_ifp;


 CSR_WRITE_4(sc, TI_MB_HOSTINTR, 1);



 TI_DO_CMD(TI_CMD_HOST_STATE, TI_CMD_CODE_STACK_DOWN, 0);


 if (ti_chipinit(sc) == 0) {
  ti_mem_zero(sc, 0x2000, 0x100000 - 0x2000);

  ti_chipinit(sc);
 }


 ti_free_rx_ring_std(sc);


 ti_free_rx_ring_jumbo(sc);


 ti_free_rx_ring_mini(sc);


 ti_free_tx_ring(sc);

 sc->ti_ev_prodidx.ti_idx = 0;
 sc->ti_return_prodidx.ti_idx = 0;
 sc->ti_tx_considx.ti_idx = 0;
 sc->ti_tx_saved_considx = TI_TXCONS_UNSET;

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->ti_watchdog);
}

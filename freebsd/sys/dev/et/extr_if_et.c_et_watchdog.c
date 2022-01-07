
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * txsd_status; int txsd_dmap; int txsd_dtag; } ;
struct et_softc {scalar_t__ watchdog_timer; TYPE_2__* ifp; TYPE_1__ sc_tx_status; } ;
struct TYPE_5__ {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int EJUSTRETURN ;
 int ET_LOCK_ASSERT (struct et_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int et_init_locked (struct et_softc*) ;
 int if_inc_counter (TYPE_2__*,int ,int) ;
 int if_printf (TYPE_2__*,char*,int ) ;
 int le32toh (int ) ;

__attribute__((used)) static int
et_watchdog(struct et_softc *sc)
{
 uint32_t status;

 ET_LOCK_ASSERT(sc);

 if (sc->watchdog_timer == 0 || --sc->watchdog_timer)
  return (0);

 bus_dmamap_sync(sc->sc_tx_status.txsd_dtag, sc->sc_tx_status.txsd_dmap,
     BUS_DMASYNC_POSTREAD);
 status = le32toh(*(sc->sc_tx_status.txsd_status));
 if_printf(sc->ifp, "watchdog timed out (0x%08x) -- resetting\n",
     status);

 if_inc_counter(sc->ifp, IFCOUNTER_OERRORS, 1);
 sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 et_init_locked(sc);
 return (EJUSTRETURN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ubt_softc_p ;
struct TYPE_5__ {int sc_task_flags; int sc_if_mtx; int * sc_xfer; } ;


 int UBT_FLAG_T_START_ALL ;
 int UBT_FLAG_T_START_BULK ;
 int UBT_FLAG_T_START_CTRL ;
 int UBT_FLAG_T_STOP_ALL ;
 int UBT_IF_0_BULK_DT_RD ;
 int UBT_IF_0_BULK_DT_WR ;
 int UBT_IF_0_CTRL_DT_WR ;
 int UBT_IF_0_INTR_DT_RD ;
 int UBT_IF_1_ISOC_DT_RD1 ;
 int UBT_IF_1_ISOC_DT_RD2 ;
 int UBT_IF_1_ISOC_DT_WR1 ;
 int UBT_IF_1_ISOC_DT_WR2 ;
 int UBT_NG_LOCK (TYPE_1__*) ;
 int UBT_NG_UNLOCK (TYPE_1__*) ;
 int UBT_N_TRANSFER ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ubt_xfer_start (TYPE_1__*,int ) ;
 int usbd_transfer_drain (int ) ;

__attribute__((used)) static void
ubt_task(void *context, int pending)
{
 ubt_softc_p sc = context;
 int task_flags, i;

 UBT_NG_LOCK(sc);
 task_flags = sc->sc_task_flags;
 sc->sc_task_flags = 0;
 UBT_NG_UNLOCK(sc);







 if (task_flags & UBT_FLAG_T_STOP_ALL)
  for (i = 0; i < UBT_N_TRANSFER; i ++)
   usbd_transfer_drain(sc->sc_xfer[i]);


 if (task_flags & UBT_FLAG_T_START_ALL) {




  mtx_lock(&sc->sc_if_mtx);

  ubt_xfer_start(sc, UBT_IF_0_INTR_DT_RD);
  ubt_xfer_start(sc, UBT_IF_0_BULK_DT_RD);
  ubt_xfer_start(sc, UBT_IF_1_ISOC_DT_RD1);
  ubt_xfer_start(sc, UBT_IF_1_ISOC_DT_RD2);
  ubt_xfer_start(sc, UBT_IF_1_ISOC_DT_WR1);
  ubt_xfer_start(sc, UBT_IF_1_ISOC_DT_WR2);

  mtx_unlock(&sc->sc_if_mtx);
 }


 if (task_flags & UBT_FLAG_T_START_CTRL) {
  mtx_lock(&sc->sc_if_mtx);
  ubt_xfer_start(sc, UBT_IF_0_CTRL_DT_WR);
  mtx_unlock(&sc->sc_if_mtx);
 }


 if (task_flags & UBT_FLAG_T_START_BULK) {
  mtx_lock(&sc->sc_if_mtx);
  ubt_xfer_start(sc, UBT_IF_0_BULK_DT_WR);
  mtx_unlock(&sc->sc_if_mtx);
 }
}

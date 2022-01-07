
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct isc_softc {int isc_mtx; int nsess; int isc_sess; int unit_sx; int unit; } ;
struct TYPE_10__ {int flags; int clist; int opt; int io_mtx; int snd_mtx; int hld_mtx; int rsv_mtx; int rsp_mtx; int dev; int sid; struct isc_softc* isc; } ;
typedef TYPE_1__ isc_session_t ;


 int ISC_FFPHASE ;
 int ISC_SM_RUN ;
 int ISC_SM_RUNNING ;
 int M_ISCSI ;
 int PRIBIO ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int debug_called (int) ;
 int destroy_dev (int ) ;
 int free (TYPE_1__*,int ) ;
 int free_unr (int ,int ) ;
 int hz ;
 int i_freeopt (int *) ;
 int i_pdu_flush (TYPE_1__*) ;
 int ic_destroy (TYPE_1__*) ;
 int isc_stop_receiver (TYPE_1__*) ;
 int iscsi_cleanup (TYPE_1__*) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sdebug (int,char*,...) ;
 int sp_link ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 scalar_t__ sysctl_ctx_free (int *) ;
 int tsleep (TYPE_1__*,int ,char*,int) ;
 int wakeup (int*) ;
 int xdebug (char*) ;

void
ism_stop(isc_session_t *sp)
{
     struct isc_softc *sc = sp->isc;
     int n;

     debug_called(8);
     sdebug(2, "terminating");



     isc_stop_receiver(sp);



     n = 5;
     sp->flags &= ~ISC_SM_RUN;
     while(n-- && (sp->flags & ISC_SM_RUNNING)) {
   sdebug(2, "n=%d", n);
   wakeup(&sp->flags);
   tsleep(sp, PRIBIO, "-", 5*hz);
     }
     sdebug(2, "final n=%d", n);
     sp->flags &= ~ISC_FFPHASE;

     iscsi_cleanup(sp);

     (void)i_pdu_flush(sp);

     ic_destroy(sp);

     sx_xlock(&sc->unit_sx);
     free_unr(sc->unit, sp->sid);
     sx_xunlock(&sc->unit_sx);

     mtx_lock(&sc->isc_mtx);
     TAILQ_REMOVE(&sc->isc_sess, sp, sp_link);
     sc->nsess--;
     mtx_unlock(&sc->isc_mtx);


     destroy_dev(sp->dev);


     mtx_destroy(&sp->rsp_mtx);
     mtx_destroy(&sp->rsv_mtx);
     mtx_destroy(&sp->hld_mtx);
     mtx_destroy(&sp->snd_mtx);
     mtx_destroy(&sp->io_mtx);

     i_freeopt(&sp->opt);

     if(sysctl_ctx_free(&sp->clist))
   xdebug("sysctl_ctx_free failed");

     free(sp, M_ISCSI);
}

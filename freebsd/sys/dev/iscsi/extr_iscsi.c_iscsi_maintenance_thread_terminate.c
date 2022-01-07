
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_softc {int sc_cv; int sc_lock; int sc_sessions; } ;
struct iscsi_session {int is_login_cv; int is_maintenance_cv; int is_lock; int is_conn; int is_postponed; int is_outstanding; int * is_login_pdu; int is_terminating; int is_callout; struct iscsi_softc* is_softc; } ;


 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*) ;
 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 int KASSERT (int ,char*) ;
 int M_ISCSI ;
 int STAILQ_EMPTY (int *) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct iscsi_session*,int ) ;
 int callout_drain (int *) ;
 int cv_destroy (int *) ;
 int cv_signal (int *) ;
 int free (struct iscsi_session*,int ) ;
 int icl_conn_close (int ) ;
 int icl_conn_free (int ) ;
 int icl_pdu_free (int *) ;
 int is_next ;
 int iscsi_session_cleanup (struct iscsi_session*,int) ;
 int mtx_destroy (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
iscsi_maintenance_thread_terminate(struct iscsi_session *is)
{
 struct iscsi_softc *sc;

 sc = is->is_softc;
 sx_xlock(&sc->sc_lock);
 TAILQ_REMOVE(&sc->sc_sessions, is, is_next);
 sx_xunlock(&sc->sc_lock);

 icl_conn_close(is->is_conn);
 callout_drain(&is->is_callout);

 ISCSI_SESSION_LOCK(is);

 KASSERT(is->is_terminating, ("is_terminating == false"));
 iscsi_session_cleanup(is, 1);

 KASSERT(TAILQ_EMPTY(&is->is_outstanding),
     ("destroying session with active tasks"));
 KASSERT(STAILQ_EMPTY(&is->is_postponed),
     ("destroying session with postponed PDUs"));

 ISCSI_SESSION_UNLOCK(is);

 icl_conn_free(is->is_conn);
 mtx_destroy(&is->is_lock);
 cv_destroy(&is->is_maintenance_cv);




 ISCSI_SESSION_DEBUG(is, "terminated");
 free(is, M_ISCSI);




 cv_signal(&sc->sc_cv);
}

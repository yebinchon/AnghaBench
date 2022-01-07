
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isc_enable; scalar_t__ isc_discovery; } ;
struct iscsi_session {int is_connected; int is_reconnecting; int is_login_phase; int is_waiting_for_iscsid; TYPE_2__* is_softc; scalar_t__ is_timeout; int is_reason; TYPE_1__ is_conf; int is_postponed; int is_outstanding; int is_login_cv; int * is_login_pdu; int is_conn; } ;
struct TYPE_4__ {int sc_cv; } ;


 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*) ;
 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 int KASSERT (int ,char*) ;
 int STAILQ_EMPTY (int *) ;
 int TAILQ_EMPTY (int *) ;
 int cv_signal (int *) ;
 scalar_t__ fail_on_disconnection ;
 int icl_conn_close (int ) ;
 int icl_pdu_free (int *) ;
 int iscsi_session_cleanup (struct iscsi_session*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
iscsi_maintenance_thread_reconnect(struct iscsi_session *is)
{

 icl_conn_close(is->is_conn);

 ISCSI_SESSION_LOCK(is);

 is->is_connected = 0;
 is->is_reconnecting = 0;
 is->is_login_phase = 0;
 if (fail_on_disconnection) {
  ISCSI_SESSION_DEBUG(is, "connection failed, destroying devices");
  iscsi_session_cleanup(is, 1);
 } else {
  iscsi_session_cleanup(is, 0);
 }

 KASSERT(TAILQ_EMPTY(&is->is_outstanding),
     ("destroying session with active tasks"));
 KASSERT(STAILQ_EMPTY(&is->is_postponed),
     ("destroying session with postponed PDUs"));

 if (is->is_conf.isc_enable == 0 && is->is_conf.isc_discovery == 0) {
  ISCSI_SESSION_UNLOCK(is);
  return;
 }





 is->is_waiting_for_iscsid = 1;
 strlcpy(is->is_reason, "Waiting for iscsid(8)", sizeof(is->is_reason));
 is->is_timeout = 0;
 ISCSI_SESSION_UNLOCK(is);
 cv_signal(&is->is_softc->sc_cv);
}

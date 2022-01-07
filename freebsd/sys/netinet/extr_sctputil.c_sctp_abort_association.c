
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct TYPE_2__ {int refcnt; scalar_t__ vrf_id; scalar_t__ peer_vtag; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_inpcb {int fibnum; } ;
struct mbuf {int dummy; } ;


 int SCTP_ADD_SUBSTATE (struct sctp_tcb*,int ) ;
 scalar_t__ SCTP_FROM_SCTPUTIL ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 struct socket* SCTP_INP_SO (struct sctp_inpcb*) ;
 scalar_t__ SCTP_LOC_4 ;
 int SCTP_NORMAL_PROC ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STATE_OPEN ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_STATE_WAS_ABORTED ;
 int SCTP_STAT_DECR_GAUGE32 (int ) ;
 int SCTP_STAT_INCR_COUNTER32 (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int sctp_abort_notification (struct sctp_tcb*,int ,int ,int *,int ) ;
 int sctp_free_assoc (struct sctp_inpcb*,struct sctp_tcb*,int ,scalar_t__) ;
 int sctp_send_abort (struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,scalar_t__,struct mbuf*,int ,scalar_t__,int ,scalar_t__,int ) ;
 int sctps_aborted ;
 int sctps_currestab ;

void
sctp_abort_association(struct sctp_inpcb *inp, struct sctp_tcb *stcb,
    struct mbuf *m, int iphlen,
    struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh, struct mbuf *op_err,
    uint8_t mflowtype, uint32_t mflowid,
    uint32_t vrf_id, uint16_t port)
{
 uint32_t vtag;




 vtag = 0;
 if (stcb != ((void*)0)) {
  vtag = stcb->asoc.peer_vtag;
  vrf_id = stcb->asoc.vrf_id;
 }
 sctp_send_abort(m, iphlen, src, dst, sh, vtag, op_err,
     mflowtype, mflowid, inp->fibnum,
     vrf_id, port);
 if (stcb != ((void*)0)) {

  sctp_abort_notification(stcb, 0, 0, ((void*)0), SCTP_SO_NOT_LOCKED);
  SCTP_ADD_SUBSTATE(stcb, SCTP_STATE_WAS_ABORTED);
  SCTP_STAT_INCR_COUNTER32(sctps_aborted);
  if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
      (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {
   SCTP_STAT_DECR_GAUGE32(sctps_currestab);
  }
  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTPUTIL + SCTP_LOC_4);



 }
}

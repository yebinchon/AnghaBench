
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int sctp_flags; int fibnum; } ;
struct TYPE_2__ {int chunk_length; } ;
struct sctp_init {scalar_t__ initiate_tag; scalar_t__ num_inbound_streams; scalar_t__ num_outbound_streams; int a_rwnd; } ;
struct sctp_init_chunk {TYPE_1__ ch; struct sctp_init init; } ;
struct mbuf {int dummy; } ;


 int SCTPDBG (int ,char*,...) ;
 scalar_t__ SCTP_BASE_SYSCTL (int ) ;
 scalar_t__ SCTP_CAUSE_INVALID_PARAM ;
 int SCTP_DEBUG_INPUT2 ;
 int SCTP_DEBUG_INPUT3 ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 int SCTP_IS_LISTENING (struct sctp_inpcb*) ;
 scalar_t__ SCTP_MIN_RWND ;
 int SCTP_OUTPUT_FROM_CONTROL_PROC ;
 int SCTP_PCB_FLAGS_SOCKET_ALLGONE ;
 int SCTP_PCB_FLAGS_SOCKET_GONE ;
 int SCTP_SO_NOT_LOCKED ;
 scalar_t__ SCTP_STATE_SHUTDOWN_ACK_SENT ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_abort_association (struct sctp_inpcb*,struct sctp_tcb*,struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,struct mbuf*,int ,int ,int ,int ) ;
 int sctp_blackhole ;
 int sctp_chunk_output (struct sctp_inpcb*,struct sctp_tcb*,int ,int ) ;
 int sctp_diag_info_code ;
 struct mbuf* sctp_generate_cause (scalar_t__,char*) ;
 int sctp_send_abort (struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,int ,struct mbuf*,int ,int ,int ,int ,int ) ;
 int sctp_send_initiate_ack (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,struct mbuf*,int,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,struct sctp_init_chunk*,int ,int ,int ,int ) ;
 int sctp_send_shutdown_ack (struct sctp_tcb*,int *) ;
 scalar_t__ sctp_validate_init_auth_params (struct mbuf*,int,int) ;

__attribute__((used)) static void
sctp_handle_init(struct mbuf *m, int iphlen, int offset,
    struct sockaddr *src, struct sockaddr *dst, struct sctphdr *sh,
    struct sctp_init_chunk *cp, struct sctp_inpcb *inp,
    struct sctp_tcb *stcb, struct sctp_nets *net, int *abort_no_unlock,
    uint8_t mflowtype, uint32_t mflowid,
    uint32_t vrf_id, uint16_t port)
{
 struct sctp_init *init;
 struct mbuf *op_err;

 SCTPDBG(SCTP_DEBUG_INPUT2, "sctp_handle_init: handling INIT tcb:%p\n",
     (void *)stcb);
 if (stcb == ((void*)0)) {
  SCTP_INP_RLOCK(inp);
 }

 if (ntohs(cp->ch.chunk_length) < sizeof(struct sctp_init_chunk)) {
  op_err = sctp_generate_cause(SCTP_CAUSE_INVALID_PARAM, "");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }

 init = &cp->init;
 if (init->initiate_tag == 0) {

  op_err = sctp_generate_cause(SCTP_CAUSE_INVALID_PARAM, "");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }
 if (ntohl(init->a_rwnd) < SCTP_MIN_RWND) {

  op_err = sctp_generate_cause(SCTP_CAUSE_INVALID_PARAM, "");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }
 if (init->num_inbound_streams == 0) {

  op_err = sctp_generate_cause(SCTP_CAUSE_INVALID_PARAM, "");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }
 if (init->num_outbound_streams == 0) {

  op_err = sctp_generate_cause(SCTP_CAUSE_INVALID_PARAM, "");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }
 if (sctp_validate_init_auth_params(m, offset + sizeof(*cp),
     offset + ntohs(cp->ch.chunk_length))) {

  op_err = sctp_generate_cause(SCTP_BASE_SYSCTL(sctp_diag_info_code),
      "Problem with AUTH parameters");
  sctp_abort_association(inp, stcb, m, iphlen, src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  if (stcb)
   *abort_no_unlock = 1;
  goto outnow;
 }

 if ((stcb == ((void*)0)) &&
     ((inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_GONE) ||
     (inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_ALLGONE) ||
     (!SCTP_IS_LISTENING(inp)))) {
  if (SCTP_BASE_SYSCTL(sctp_blackhole) == 0) {
   op_err = sctp_generate_cause(SCTP_BASE_SYSCTL(sctp_diag_info_code),
       "No listener");
   sctp_send_abort(m, iphlen, src, dst, sh, 0, op_err,
       mflowtype, mflowid, inp->fibnum,
       vrf_id, port);
  }
  goto outnow;
 }
 if ((stcb != ((void*)0)) &&
     (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_ACK_SENT)) {
  SCTPDBG(SCTP_DEBUG_INPUT3, "sctp_handle_init: sending SHUTDOWN-ACK\n");
  sctp_send_shutdown_ack(stcb, ((void*)0));
  sctp_chunk_output(inp, stcb, SCTP_OUTPUT_FROM_CONTROL_PROC, SCTP_SO_NOT_LOCKED);
 } else {
  SCTPDBG(SCTP_DEBUG_INPUT3, "sctp_handle_init: sending INIT-ACK\n");
  sctp_send_initiate_ack(inp, stcb, net, m, iphlen, offset,
      src, dst, sh, cp,
      mflowtype, mflowid,
      vrf_id, port);
 }
outnow:
 if (stcb == ((void*)0)) {
  SCTP_INP_RUNLOCK(inp);
 }
}

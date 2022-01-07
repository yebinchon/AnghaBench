
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int s_addr; } ;
struct TYPE_14__ {int sin_len; int sin6_len; int sin6_addr; int sin6_scope_id; int sin6_family; TYPE_5__ sin_addr; int sin_family; } ;
union sctp_sockstore {int sa; TYPE_7__ sin6; TYPE_7__ sin; } ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct TYPE_10__ {scalar_t__ ipv4_addr_legal; scalar_t__ ipv6_addr_legal; int loopback_scope; int local_scope; int site_scope; int ipv4_local_scope; } ;
struct sctp_association {int authenticated; int state; int time_entered; scalar_t__ sctp_autoclose_ticks; int refcnt; int * primary_destination; void* last_acked_seq; void* advanced_peer_ack_point; void* init_seq_number; void* str_reset_seq_in; void* asconf_seq_in; void* asconf_seq_out; void* asconf_seq_out_acked; void* str_reset_seq_out; void* sending_seq; int pre_open_streams; void* my_rwnd; void* my_vtag; TYPE_3__ scope; } ;
struct sctp_tcb {struct sctp_association asoc; struct sctp_inpcb* sctp_ep; int sctp_socket; } ;
struct TYPE_13__ {int tv_usec; int tv_sec; } ;
struct sctp_state_cookie {scalar_t__ ipv4_addr_legal; scalar_t__ ipv6_addr_legal; int laddr_type; int loopback_scope; int ipv4_scope; int site_scope; int local_scope; TYPE_6__ time_entered; int * laddress; int scope_id; } ;
struct sctp_nets {int hb_responded; } ;
struct sctp_inpcb {int sctp_flags; } ;
struct TYPE_8__ {scalar_t__ chunk_type; int chunk_length; } ;
struct sctp_init_chunk {TYPE_1__ ch; } ;
struct TYPE_11__ {int initial_tsn; int num_outbound_streams; int a_rwnd; int initiate_tag; } ;
struct TYPE_9__ {scalar_t__ chunk_type; } ;
struct sctp_init_ack_chunk {TYPE_4__ init; TYPE_2__ ch; } ;
struct sctp_cookie_echo_chunk {int dummy; } ;
struct sctp_auth_chunk {int dummy; } ;
struct mbuf {int dummy; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int SCTPDBG (int ,char*) ;
 int SCTP_CAUSE_OUT_OF_RESC ;
 int SCTP_DEBUG_AUTH1 ;
 int SCTP_DEBUG_INPUT1 ;
 int SCTP_DEBUG_INPUT2 ;
 int SCTP_DONT_INITIALIZE_AUTH_PARAMS ;
 scalar_t__ SCTP_FROM_SCTP_INPUT ;
 int SCTP_GETTIME_TIMEVAL (int *) ;
 scalar_t__ SCTP_INITIATION ;
 scalar_t__ SCTP_INITIATION_ACK ;
 struct socket* SCTP_INP_SO (struct sctp_inpcb*) ;


 scalar_t__ SCTP_IS_LISTENING (struct sctp_inpcb*) ;
 scalar_t__ SCTP_LOC_18 ;
 scalar_t__ SCTP_LOC_19 ;
 scalar_t__ SCTP_LOC_20 ;
 scalar_t__ SCTP_LOC_21 ;
 scalar_t__ SCTP_LOC_22 ;
 int SCTP_NORMAL_PROC ;
 int SCTP_NOTIFY_ASSOC_UP ;
 int SCTP_PARAM_BUFFER_SIZE ;
 int SCTP_PCB_FLAGS_AUTOCLOSE ;
 int SCTP_PCB_FLAGS_CONNECTED ;
 int SCTP_PCB_FLAGS_IN_TCPPOOL ;
 int SCTP_PCB_FLAGS_TCPTYPE ;
 int SCTP_RTT_FROM_NON_DATA ;
 int SCTP_SET_STATE (struct sctp_tcb*,int ) ;
 int SCTP_SIZE32 (int ) ;
 int SCTP_SOCKET_LOCK (struct socket*,int) ;
 int SCTP_SOCKET_UNLOCK (struct socket*,int) ;
 int SCTP_STATE_CLOSED_SOCKET ;
 int SCTP_STATE_OPEN ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_STAT_INCR_COUNTER32 (int ) ;
 int SCTP_STAT_INCR_GAUGE32 (int ) ;
 int SCTP_TCB_LOCK (struct sctp_tcb*) ;
 int SCTP_TCB_UNLOCK (struct sctp_tcb*) ;
 int SCTP_TIMER_TYPE_AUTOCLOSE ;
 int SCTP_TIMER_TYPE_SHUTDOWNGUARD ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_7__*,int ,int) ;
 void* ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_abort_association (struct sctp_inpcb*,struct sctp_tcb*,struct mbuf*,int,struct sockaddr*,struct sockaddr*,struct sctphdr*,struct mbuf*,int ,int,int,int ) ;
 struct sctp_tcb* sctp_aloc_assoc (struct sctp_inpcb*,struct sockaddr*,int*,void*,int,int ,int ,struct thread*,int ) ;
 int sctp_auth_get_cookie_params (struct sctp_tcb*,struct mbuf*,int,int) ;
 int sctp_calculate_rto (struct sctp_tcb*,struct sctp_association*,struct sctp_nets*,struct timeval*,int ) ;
 int sctp_check_address_list (struct sctp_tcb*,struct mbuf*,int,int,int *,int ,int ,int ,int ) ;
 struct sctp_nets* sctp_findnet (struct sctp_tcb*,struct sockaddr*) ;
 int sctp_free_assoc (struct sctp_inpcb*,struct sctp_tcb*,int ,scalar_t__) ;
 struct mbuf* sctp_generate_cause (int ,char*) ;
 scalar_t__ sctp_handle_auth (struct sctp_tcb*,struct sctp_auth_chunk*,struct mbuf*,int) ;
 scalar_t__ sctp_is_feature_on (struct sctp_inpcb*,int ) ;
 scalar_t__ sctp_load_addresses_from_init (struct sctp_tcb*,struct mbuf*,int,int,struct sockaddr*,struct sockaddr*,struct sockaddr*,int ) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,int,int,int *) ;
 int sctp_process_init (struct sctp_init_chunk*,struct sctp_tcb*) ;
 int sctp_send_cookie_ack (struct sctp_tcb*) ;
 int sctp_stop_all_cookie_timers (struct sctp_tcb*) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,int *) ;
 int sctps_currestab ;
 int sctps_passiveestab ;
 int soisconnected (int ) ;

__attribute__((used)) static struct sctp_tcb *
sctp_process_cookie_new(struct mbuf *m, int iphlen, int offset,
    struct sockaddr *src, struct sockaddr *dst,
    struct sctphdr *sh, struct sctp_state_cookie *cookie, int cookie_len,
    struct sctp_inpcb *inp, struct sctp_nets **netp,
    struct sockaddr *init_src, int *notification,
    int auth_skipped, uint32_t auth_offset, uint32_t auth_len,
    uint8_t mflowtype, uint32_t mflowid,
    uint32_t vrf_id, uint16_t port)
{
 struct sctp_tcb *stcb;
 struct sctp_init_chunk *init_cp, init_buf;
 struct sctp_init_ack_chunk *initack_cp, initack_buf;
 union sctp_sockstore store;
 struct sctp_association *asoc;
 int init_offset, initack_offset, initack_limit;
 int retval;
 int error = 0;
 uint8_t auth_chunk_buf[SCTP_PARAM_BUFFER_SIZE];
 init_offset = offset + sizeof(struct sctp_cookie_echo_chunk);
 init_cp = (struct sctp_init_chunk *)
     sctp_m_getptr(m, init_offset, sizeof(struct sctp_init_chunk),
     (uint8_t *)&init_buf);
 if (init_cp == ((void*)0)) {

  SCTPDBG(SCTP_DEBUG_INPUT1,
      "process_cookie_new: could not pull INIT chunk hdr\n");
  return (((void*)0));
 }
 if (init_cp->ch.chunk_type != SCTP_INITIATION) {
  SCTPDBG(SCTP_DEBUG_INPUT1, "HUH? process_cookie_new: could not find INIT chunk!\n");
  return (((void*)0));
 }
 initack_offset = init_offset + SCTP_SIZE32(ntohs(init_cp->ch.chunk_length));




 initack_cp = (struct sctp_init_ack_chunk *)
     sctp_m_getptr(m, initack_offset, sizeof(struct sctp_init_ack_chunk),
     (uint8_t *)&initack_buf);
 if (initack_cp == ((void*)0)) {

  SCTPDBG(SCTP_DEBUG_INPUT1, "process_cookie_new: could not pull INIT-ACK chunk hdr\n");
  return (((void*)0));
 }
 if (initack_cp->ch.chunk_type != SCTP_INITIATION_ACK) {
  return (((void*)0));
 }






 initack_limit = offset + cookie_len;
 stcb = sctp_aloc_assoc(inp, init_src, &error,
     ntohl(initack_cp->init.initiate_tag), vrf_id,
     ntohs(initack_cp->init.num_outbound_streams),
     port,
     (struct thread *)((void*)0),
     SCTP_DONT_INITIALIZE_AUTH_PARAMS);
 if (stcb == ((void*)0)) {
  struct mbuf *op_err;


  SCTPDBG(SCTP_DEBUG_INPUT1,
      "process_cookie_new: no room for another TCB!\n");
  op_err = sctp_generate_cause(SCTP_CAUSE_OUT_OF_RESC, "");
  sctp_abort_association(inp, (struct sctp_tcb *)((void*)0), m, iphlen,
      src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);
  return (((void*)0));
 }

 if (netp)
  *netp = sctp_findnet(stcb, init_src);

 asoc = &stcb->asoc;

 asoc->scope.ipv4_local_scope = cookie->ipv4_scope;
 asoc->scope.site_scope = cookie->site_scope;
 asoc->scope.local_scope = cookie->local_scope;
 asoc->scope.loopback_scope = cookie->loopback_scope;

 if ((asoc->scope.ipv4_addr_legal != cookie->ipv4_addr_legal) ||
     (asoc->scope.ipv6_addr_legal != cookie->ipv6_addr_legal)) {
  struct mbuf *op_err;






  op_err = sctp_generate_cause(SCTP_CAUSE_OUT_OF_RESC, "");
  sctp_abort_association(inp, (struct sctp_tcb *)((void*)0), m, iphlen,
      src, dst, sh, op_err,
      mflowtype, mflowid,
      vrf_id, port);







  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTP_INPUT + SCTP_LOC_18);



  return (((void*)0));
 }

 asoc->my_vtag = ntohl(initack_cp->init.initiate_tag);
 asoc->my_rwnd = ntohl(initack_cp->init.a_rwnd);
 asoc->pre_open_streams = ntohs(initack_cp->init.num_outbound_streams);
 asoc->init_seq_number = ntohl(initack_cp->init.initial_tsn);
 asoc->sending_seq = asoc->asconf_seq_out = asoc->str_reset_seq_out = asoc->init_seq_number;
 asoc->asconf_seq_out_acked = asoc->asconf_seq_out - 1;
 asoc->asconf_seq_in = asoc->last_acked_seq = asoc->init_seq_number - 1;
 asoc->str_reset_seq_in = asoc->init_seq_number;

 asoc->advanced_peer_ack_point = asoc->last_acked_seq;


 if (netp)
  retval = sctp_process_init(init_cp, stcb);
 else
  retval = 0;
 if (retval < 0) {







  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTP_INPUT + SCTP_LOC_19);



  return (((void*)0));
 }

 if (sctp_load_addresses_from_init(stcb, m,
     init_offset + sizeof(struct sctp_init_chunk), initack_offset,
     src, dst, init_src, port)) {







  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTP_INPUT + SCTP_LOC_20);



  return (((void*)0));
 }




 sctp_auth_get_cookie_params(stcb, m,
     initack_offset + sizeof(struct sctp_init_ack_chunk),
     initack_limit - (initack_offset + sizeof(struct sctp_init_ack_chunk)));
 if (auth_skipped) {
  struct sctp_auth_chunk *auth;

  auth = (struct sctp_auth_chunk *)
      sctp_m_getptr(m, auth_offset, auth_len, auth_chunk_buf);
  if ((auth == ((void*)0)) || sctp_handle_auth(stcb, auth, m, auth_offset)) {

   SCTPDBG(SCTP_DEBUG_AUTH1,
       "COOKIE-ECHO: AUTH failed\n");







   (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
       SCTP_FROM_SCTP_INPUT + SCTP_LOC_21);



   return (((void*)0));
  } else {

   stcb->asoc.authenticated = 1;
  }
 }
 switch (cookie->laddr_type) {
 default:







  (void)sctp_free_assoc(inp, stcb, SCTP_NORMAL_PROC,
      SCTP_FROM_SCTP_INPUT + SCTP_LOC_22);



  return (((void*)0));
 }


 SCTPDBG(SCTP_DEBUG_INPUT2, "moving to OPEN state\n");
 SCTP_SET_STATE(stcb, SCTP_STATE_OPEN);
 if (asoc->state & SCTP_STATE_SHUTDOWN_PENDING) {
  sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWNGUARD,
      stcb->sctp_ep, stcb, asoc->primary_destination);
 }
 sctp_stop_all_cookie_timers(stcb);
 SCTP_STAT_INCR_COUNTER32(sctps_passiveestab);
 SCTP_STAT_INCR_GAUGE32(sctps_currestab);


 *notification = SCTP_NOTIFY_ASSOC_UP;
 if (((stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) ||
     (stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_IN_TCPPOOL)) &&
     (!SCTP_IS_LISTENING(inp))) {
  stcb->sctp_ep->sctp_flags |= SCTP_PCB_FLAGS_CONNECTED;
  soisconnected(stcb->sctp_socket);



 } else if ((stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_TCPTYPE) &&
     (SCTP_IS_LISTENING(inp))) {





  ;
 }

 if ((netp) && (*netp))
  (*netp)->hb_responded = 1;

 if (stcb->asoc.sctp_autoclose_ticks &&
     sctp_is_feature_on(inp, SCTP_PCB_FLAGS_AUTOCLOSE)) {
  sctp_timer_start(SCTP_TIMER_TYPE_AUTOCLOSE, inp, stcb, ((void*)0));
 }
 (void)SCTP_GETTIME_TIMEVAL(&stcb->asoc.time_entered);
 if ((netp != ((void*)0)) && (*netp != ((void*)0))) {
  struct timeval old;


  old.tv_sec = cookie->time_entered.tv_sec;
  old.tv_usec = cookie->time_entered.tv_usec;
  sctp_calculate_rto(stcb, asoc, *netp, &old, SCTP_RTT_FROM_NON_DATA);
 }

 sctp_send_cookie_ack(stcb);





 sctp_check_address_list(stcb, m,
     initack_offset + sizeof(struct sctp_init_ack_chunk),
     initack_limit - (initack_offset + sizeof(struct sctp_init_ack_chunk)),
     &store.sa, cookie->local_scope, cookie->site_scope,
     cookie->ipv4_scope, cookie->loopback_scope);


 return (stcb);
}

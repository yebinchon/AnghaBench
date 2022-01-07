
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int primary_destination; int vrf_id; } ;
struct sctp_tcb {TYPE_1__ asoc; int sctp_ep; } ;
struct sctp_ifa {int dummy; } ;
typedef int int32_t ;


 int SCTPDBG (int ,char*,void*) ;
 int SCTPDBG_ADDR (int ,struct sockaddr*) ;
 int SCTP_ADDR_NOT_LOCKED ;
 int SCTP_DEBUG_ASCONF1 ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_SET_PRIM_ADDR ;
 scalar_t__ SCTP_STATE_OPEN ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_TIMER_TYPE_ASCONF ;
 int sctp_asconf_queue_add (struct sctp_tcb*,struct sctp_ifa*,int ) ;
 struct sctp_ifa* sctp_find_ifa_by_addr (struct sockaddr*,int ,int ) ;
 int sctp_send_asconf (struct sctp_tcb*,int *,int ) ;
 int sctp_timer_start (int ,int ,struct sctp_tcb*,int ) ;

int32_t
sctp_set_primary_ip_address_sa(struct sctp_tcb *stcb, struct sockaddr *sa)
{
 uint32_t vrf_id;
 struct sctp_ifa *ifa;


 vrf_id = stcb->asoc.vrf_id;
 ifa = sctp_find_ifa_by_addr(sa, vrf_id, SCTP_ADDR_NOT_LOCKED);
 if (ifa == ((void*)0)) {

  return (-1);
 }


 if (!sctp_asconf_queue_add(stcb, ifa, SCTP_SET_PRIM_ADDR)) {

  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "set_primary_ip_address_sa: queued on tcb=%p, ",
      (void *)stcb);
  SCTPDBG_ADDR(SCTP_DEBUG_ASCONF1, sa);
  if ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
      (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED)) {





   sctp_send_asconf(stcb, ((void*)0), SCTP_ADDR_NOT_LOCKED);

  }
 } else {
  SCTPDBG(SCTP_DEBUG_ASCONF1, "set_primary_ip_address_sa: failed to add to queue on tcb=%p, ",
      (void *)stcb);
  SCTPDBG_ADDR(SCTP_DEBUG_ASCONF1, sa);
  return (-1);
 }
 return (0);
}

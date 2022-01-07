
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct sockaddr_in {TYPE_7__ sin_addr; } ;
struct TYPE_12__ {int ipv4_local_scope; int site_scope; int local_scope; } ;
struct TYPE_13__ {int primary_destination; scalar_t__ asconf_supported; TYPE_4__ scope; } ;
struct sctp_tcb {TYPE_5__ asoc; } ;
struct TYPE_9__ {int inp_cred; } ;
struct TYPE_10__ {TYPE_1__ inp; } ;
struct sctp_inpcb {int sctp_flags; TYPE_2__ ip_inp; } ;
struct TYPE_14__ {int sa_family; } ;
struct TYPE_11__ {struct sockaddr_in sin; TYPE_6__ sa; struct sockaddr_in6 sin6; } ;
struct sctp_ifa {int localifa_flags; TYPE_3__ address; } ;




 int IN4_ISPRIVATE_ADDRESS (TYPE_7__*) ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IN6_IS_ADDR_SITELOCAL (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int SCTP_ADDR_IFA_UNUSEABLE ;
 scalar_t__ SCTP_GET_STATE (struct sctp_tcb*) ;
 int SCTP_IPV6_V6ONLY (struct sctp_inpcb*) ;
 int SCTP_PCB_FLAGS_BOUNDALL ;
 int SCTP_PCB_FLAGS_BOUND_V6 ;
 int SCTP_PCB_FLAGS_DO_ASCONF ;
 scalar_t__ SCTP_STATE_OPEN ;
 scalar_t__ SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_TIMER_TYPE_ASCONF ;
 int prison_check_ip4 (int ,TYPE_7__*) ;
 int prison_check_ip6 (int ,int *) ;
 int sctp_add_local_addr_restricted (struct sctp_tcb*,struct sctp_ifa*) ;
 int sctp_asconf_queue_add (struct sctp_tcb*,struct sctp_ifa*,int ) ;
 scalar_t__ sctp_is_feature_off (struct sctp_inpcb*,int ) ;
 scalar_t__ sctp_is_feature_on (struct sctp_inpcb*,int ) ;
 int sctp_is_scopeid_in_nets (struct sctp_tcb*,TYPE_6__*) ;
 int sctp_send_asconf (struct sctp_tcb*,int *,int) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,int ) ;

__attribute__((used)) static void
sctp_addr_mgmt_assoc(struct sctp_inpcb *inp, struct sctp_tcb *stcb,
    struct sctp_ifa *ifa, uint16_t type, int addr_locked)
{
 int status;

 if ((inp->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) == 0 ||
     sctp_is_feature_off(inp, SCTP_PCB_FLAGS_DO_ASCONF)) {

  return;
 }






 switch (ifa->address.sa.sa_family) {
 default:
  return;
 }
 sctp_add_local_addr_restricted(stcb, ifa);





 switch (ifa->address.sa.sa_family) {
 default:

  return;
 }


 if (sctp_is_feature_on(inp, SCTP_PCB_FLAGS_DO_ASCONF)) {

  if (stcb->asoc.asconf_supported) {

   status = sctp_asconf_queue_add(stcb, ifa, type);






   if (status == 0 &&
       ((SCTP_GET_STATE(stcb) == SCTP_STATE_OPEN) ||
       (SCTP_GET_STATE(stcb) == SCTP_STATE_SHUTDOWN_RECEIVED))) {




    sctp_send_asconf(stcb, ((void*)0), addr_locked);

   }
  }
 }
}

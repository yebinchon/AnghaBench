
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctp_tcb {TYPE_1__* sctp_ep; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int sctp_flags; } ;


 int SCTP_PCB_FLAGS_BOUNDALL ;
 int SCTP_PCB_FLAGS_DO_ASCONF ;
 int sctp_check_address_list_all (struct sctp_tcb*,struct mbuf*,int,int,struct sockaddr*,int ,int ,int ,int ) ;
 int sctp_check_address_list_ep (struct sctp_tcb*,struct mbuf*,int,int,struct sockaddr*) ;
 scalar_t__ sctp_is_feature_on (TYPE_1__*,int ) ;
 int sctp_process_initack_addresses (struct sctp_tcb*,struct mbuf*,int,int) ;

void
sctp_check_address_list(struct sctp_tcb *stcb, struct mbuf *m, int offset,
    int length, struct sockaddr *init_addr,
    uint16_t local_scope, uint16_t site_scope,
    uint16_t ipv4_scope, uint16_t loopback_scope)
{

 sctp_process_initack_addresses(stcb, m, offset, length);

 if (stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {

  sctp_check_address_list_all(stcb, m, offset, length, init_addr,
      local_scope, site_scope, ipv4_scope, loopback_scope);
 } else {

  if (sctp_is_feature_on(stcb->sctp_ep,
      SCTP_PCB_FLAGS_DO_ASCONF)) {

   sctp_check_address_list_ep(stcb, m, offset, length,
       init_addr);
  }

 }
}

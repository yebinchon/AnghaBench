
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq; } ;
struct sdp_sock {TYPE_1__ rx_ring; int socket; } ;


 int IB_CQ_NEXT_COMP ;
 int ib_req_notify_cq (int ,int ) ;
 int sdp_dbg_data (int ,char*) ;
 int sdp_prf (int ,int *,char*) ;

__attribute__((used)) static inline void sdp_arm_rx_cq(struct sdp_sock *ssk)
{
 sdp_prf(ssk->socket, ((void*)0), "Arming RX cq");
 sdp_dbg_data(ssk->socket, "Arming RX cq\n");

 ib_req_notify_cq(ssk->rx_ring.cq, IB_CQ_NEXT_COMP);
}

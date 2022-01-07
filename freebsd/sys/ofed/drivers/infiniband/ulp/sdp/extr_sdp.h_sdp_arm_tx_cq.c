
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq; } ;
struct sdp_sock {TYPE_1__ tx_ring; int socket; } ;


 int IB_CQ_NEXT_COMP ;
 int ib_req_notify_cq (int ,int ) ;
 int sdp_dbg_data (int ,char*,int ,int ) ;
 int sdp_prf (int ,int *,char*) ;
 int tx_credits (struct sdp_sock*) ;
 int tx_ring_posted (struct sdp_sock*) ;

__attribute__((used)) static inline void sdp_arm_tx_cq(struct sdp_sock *ssk)
{
 sdp_prf(ssk->socket, ((void*)0), "Arming TX cq");
 sdp_dbg_data(ssk->socket, "Arming TX cq. credits: %d, posted: %d\n",
  tx_credits(ssk), tx_ring_posted(ssk));

 ib_req_notify_cq(ssk->tx_ring.cq, IB_CQ_NEXT_COMP);
}

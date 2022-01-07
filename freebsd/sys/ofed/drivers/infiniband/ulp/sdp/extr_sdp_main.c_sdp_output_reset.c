
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int state; scalar_t__ qp_active; struct rdma_cm_id* id; } ;
struct rdma_cm_id {int dummy; } ;


 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int TCPS_CLOSED ;
 int rdma_disconnect (struct rdma_cm_id*) ;

__attribute__((used)) static void
sdp_output_reset(struct sdp_sock *ssk)
{
 struct rdma_cm_id *id;

 SDP_WLOCK_ASSERT(ssk);
 if (ssk->id) {
  id = ssk->id;
  ssk->qp_active = 0;
  SDP_WUNLOCK(ssk);
  rdma_disconnect(id);
  SDP_WLOCK(ssk);
 }
 ssk->state = TCPS_CLOSED;
}

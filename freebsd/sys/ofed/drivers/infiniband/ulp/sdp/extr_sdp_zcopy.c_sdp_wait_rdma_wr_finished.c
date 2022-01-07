
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk_sleep; } ;
struct TYPE_4__ {TYPE_1__* rdma_inflight; } ;
struct sdp_sock {struct socket* socket; TYPE_2__ tx_ring; int qp_active; } ;
struct TYPE_3__ {int busy; } ;


 int DEFINE_WAIT (int ) ;
 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (int) ;
 int finish_wait (int ,int *) ;
 int posts_handler_get (struct sdp_sock*) ;
 int posts_handler_put (struct sdp_sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int sdp_dbg_data (struct socket*,char*) ;
 int sdp_prf1 (struct socket*,int *,char*) ;
 int sdp_warn (struct socket*,char*) ;
 int sk_wait_event (struct socket*,long*,int) ;
 int wait ;

__attribute__((used)) static void sdp_wait_rdma_wr_finished(struct sdp_sock *ssk)
{
 struct socket *sk = ssk->socket;
 long timeo = HZ * 5;
 DEFINE_WAIT(wait);

 sdp_dbg_data(sk, "Sleep till RDMA wr finished.\n");
 while (1) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);

  if (!ssk->tx_ring.rdma_inflight->busy) {
   sdp_dbg_data(sk, "got rdma cqe\n");
   break;
  }

  if (!ssk->qp_active) {
   sdp_dbg_data(sk, "QP destroyed\n");
   break;
  }

  if (!timeo) {
   sdp_warn(sk, "Panic: Timed out waiting for RDMA read\n");
   WARN_ON(1);
   break;
  }

  posts_handler_put(ssk);

  sdp_prf1(sk, ((void*)0), "Going to sleep");
  sk_wait_event(sk, &timeo,
   !ssk->tx_ring.rdma_inflight->busy);
  sdp_prf1(sk, ((void*)0), "Woke up");
  sdp_dbg_data(ssk->socket, "woke up sleepers\n");

  posts_handler_get(ssk);
 }

 finish_wait(sk->sk_sleep, &wait);

 sdp_dbg_data(sk, "Finished waiting\n");
}

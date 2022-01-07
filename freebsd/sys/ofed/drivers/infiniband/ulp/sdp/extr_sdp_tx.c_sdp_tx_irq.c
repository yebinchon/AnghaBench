
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int socket; } ;
struct ib_cq {int dummy; } ;


 int SDPSTATS_COUNTER_INC (int ) ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int sdp_dbg_data (int ,char*) ;
 int sdp_poll_tx (struct sdp_sock*) ;
 int sdp_prf1 (int ,int *,char*) ;
 int tx_int_count ;

__attribute__((used)) static void
sdp_tx_irq(struct ib_cq *cq, void *cq_context)
{
 struct sdp_sock *ssk;

 ssk = cq_context;
 sdp_prf1(ssk->socket, ((void*)0), "tx irq");
 sdp_dbg_data(ssk->socket, "Got tx comp interrupt\n");
 SDPSTATS_COUNTER_INC(tx_int_count);
 SDP_WLOCK(ssk);
 sdp_poll_tx(ssk);
 SDP_WUNLOCK(ssk);
}

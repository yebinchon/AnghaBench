
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int flags; int keep2msl; } ;


 int M_NOWAIT ;
 int SDP_DREQWAIT ;
 int SDP_FIN_WAIT_TIMEOUT ;
 int SDP_NEEDFIN ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int callout_reset (int *,int ,int ,struct sdp_sock*) ;
 int sdp_dreq_timeout ;
 int sdp_post_sends (struct sdp_sock*,int ) ;

__attribute__((used)) static void
sdp_output_disconnect(struct sdp_sock *ssk)
{

 SDP_WLOCK_ASSERT(ssk);
 callout_reset(&ssk->keep2msl, SDP_FIN_WAIT_TIMEOUT,
     sdp_dreq_timeout, ssk);
 ssk->flags |= SDP_NEEDFIN | SDP_DREQWAIT;
 sdp_post_sends(ssk, M_NOWAIT);
}

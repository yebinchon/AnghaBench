
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int keep2msl; int socket; int state; int flags; } ;


 int SDP_TIMEWAIT ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int TCPS_TIME_WAIT ;
 int TCPTV_MSL ;
 int callout_reset (int *,int ,int ,struct sdp_sock*) ;
 int sdp_2msl_timeout ;
 int soisdisconnected (int ) ;

__attribute__((used)) static void
sdp_2msl_wait(struct sdp_sock *ssk)
{

 SDP_WLOCK_ASSERT(ssk);
 ssk->flags |= SDP_TIMEWAIT;
 ssk->state = TCPS_TIME_WAIT;
 soisdisconnected(ssk->socket);
 callout_reset(&ssk->keep2msl, TCPTV_MSL, sdp_2msl_timeout, ssk);
}

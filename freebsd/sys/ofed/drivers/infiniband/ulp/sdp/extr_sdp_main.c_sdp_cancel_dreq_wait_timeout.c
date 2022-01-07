
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int flags; int socket; } ;


 int SDP_DREQWAIT ;
 int sdp_2msl_wait (struct sdp_sock*) ;
 int sdp_dbg (int ,char*) ;

void
sdp_cancel_dreq_wait_timeout(struct sdp_sock *ssk)
{
 sdp_dbg(ssk->socket, "cancelling dreq wait timeout\n");
 ssk->flags &= ~SDP_DREQWAIT;
 sdp_2msl_wait(ssk);
}

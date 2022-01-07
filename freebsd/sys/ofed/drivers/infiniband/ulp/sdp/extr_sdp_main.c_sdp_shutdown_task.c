
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int flags; int * socket; } ;


 int SDP_DESTROY ;
 int SDP_DISCON ;
 int SDP_DREQWAIT ;
 int SDP_DROPPED ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int panic (char*,struct sdp_sock*) ;
 int * sdp_closed (struct sdp_sock*) ;
 int sdp_output_reset (struct sdp_sock*) ;
 int sdp_pcbfree (struct sdp_sock*) ;

__attribute__((used)) static void
sdp_shutdown_task(void *data, int pending)
{
 struct sdp_sock *ssk;

 ssk = data;
 SDP_WLOCK(ssk);




 if (ssk->flags & SDP_DESTROY)
  panic("sdp_shutdown_task: Racing with pcbfree for ssk %p",
      ssk);
 if (ssk->flags & SDP_DISCON)
  sdp_output_reset(ssk);

 ssk->flags &= ~(SDP_TIMEWAIT | SDP_DREQWAIT);
 if ((ssk->flags & SDP_DROPPED) == 0 &&
     sdp_closed(ssk) == ((void*)0))
  return;
 if (ssk->socket == ((void*)0)) {
  sdp_pcbfree(ssk);
  return;
 }
 SDP_WUNLOCK(ssk);
}

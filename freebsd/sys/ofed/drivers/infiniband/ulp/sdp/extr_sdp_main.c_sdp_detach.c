
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sdp_sock {int flags; scalar_t__ state; TYPE_1__* socket; } ;
struct TYPE_2__ {int * so_pcb; } ;


 int KASSERT (int ,char*) ;
 int SDP_DREQWAIT ;
 int SDP_DROPPED ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 scalar_t__ TCPS_SYN_SENT ;
 int panic (char*,struct sdp_sock*) ;
 int sdp_pcbfree (struct sdp_sock*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

__attribute__((used)) static void
sdp_detach(struct socket *so)
{
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);
 KASSERT(ssk->socket != ((void*)0), ("sdp_detach: socket is NULL"));
 ssk->socket->so_pcb = ((void*)0);
 ssk->socket = ((void*)0);
 if (ssk->flags & (SDP_TIMEWAIT | SDP_DREQWAIT))
  SDP_WUNLOCK(ssk);
 else if (ssk->flags & SDP_DROPPED || ssk->state < TCPS_SYN_SENT)
  sdp_pcbfree(ssk);
 else
  panic("sdp_detach: Unexpected state, ssk %p.\n", ssk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;
struct sdp_sock {int flags; } ;


 int SDP_DROPPED ;
 int SDP_SOCKREF ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SS_PROTOREF ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_start_disconnect (struct sdp_sock*) ;

__attribute__((used)) static void
sdp_close(struct socket *so)
{
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);



 if (!(ssk->flags & SDP_TIMEWAIT) &&
     !(ssk->flags & SDP_DROPPED))
  sdp_start_disconnect(ssk);





 if (!(ssk->flags & SDP_DROPPED)) {
  SOCK_LOCK(so);
  so->so_state |= SS_PROTOREF;
  SOCK_UNLOCK(so);
  ssk->flags |= SDP_SOCKREF;
 }
 SDP_WUNLOCK(ssk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;
struct sdp_sock {int flags; struct socket* socket; } ;


 int KASSERT (int,char*) ;
 int SDP_DROPPED ;
 int SDP_SOCKREF ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int SOCK_LOCK (struct socket*) ;
 int SS_PROTOREF ;
 int sofree (struct socket*) ;
 int soisdisconnected (struct socket*) ;

__attribute__((used)) static struct sdp_sock *
sdp_closed(struct sdp_sock *ssk)
{
 struct socket *so;

 SDP_WLOCK_ASSERT(ssk);

 ssk->flags |= SDP_DROPPED;
 so = ssk->socket;
 soisdisconnected(so);
 if (ssk->flags & SDP_SOCKREF) {
  KASSERT(so->so_state & SS_PROTOREF,
      ("sdp_closed: !SS_PROTOREF"));
  ssk->flags &= ~SDP_SOCKREF;
  SDP_WUNLOCK(ssk);
  SOCK_LOCK(so);
  so->so_state &= ~SS_PROTOREF;
  sofree(so);
  return (((void*)0));
 }
 return (ssk);
}

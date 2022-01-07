
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {int flags; } ;


 int ECONNABORTED ;
 int KASSERT (int,char*) ;
 int SDP_DROPPED ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int sdp_drop (struct sdp_sock*,int ) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

void
sdp_abort(struct socket *so)
{
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);



 if (!(ssk->flags & SDP_TIMEWAIT) &&
     !(ssk->flags & SDP_DROPPED))
  sdp_drop(ssk, ECONNABORTED);
 KASSERT(ssk->flags & SDP_DROPPED, ("sdp_abort: %p not dropped 0x%X",
     ssk, ssk->flags));
 SDP_WUNLOCK(ssk);
}

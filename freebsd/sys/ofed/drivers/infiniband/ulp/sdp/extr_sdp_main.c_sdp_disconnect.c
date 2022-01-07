
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {int flags; } ;


 int ECONNRESET ;
 int SDP_DROPPED ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_start_disconnect (struct sdp_sock*) ;

__attribute__((used)) static int
sdp_disconnect(struct socket *so)
{
 struct sdp_sock *ssk;
 int error = 0;

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);
 if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
  error = ECONNRESET;
  goto out;
 }
 sdp_start_disconnect(ssk);
out:
 SDP_WUNLOCK(ssk);
 return (error);
}

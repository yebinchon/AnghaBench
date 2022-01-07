
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
 int sdp_output_disconnect (struct sdp_sock*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_usrclosed (struct sdp_sock*) ;
 int socantsendmore (struct socket*) ;

__attribute__((used)) static int
sdp_shutdown(struct socket *so)
{
 int error = 0;
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);
 if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
  error = ECONNRESET;
  goto out;
 }
 socantsendmore(so);
 sdp_usrclosed(ssk);
 if (!(ssk->flags & SDP_DROPPED))
  sdp_output_disconnect(ssk);

out:
 SDP_WUNLOCK(ssk);

 return (error);
}

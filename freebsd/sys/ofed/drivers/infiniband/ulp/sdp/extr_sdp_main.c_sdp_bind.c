
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_len; } ;
struct sdp_sock {int flags; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ IN_MULTICAST (int ) ;
 int SDP_DROPPED ;
 int SDP_TIMEWAIT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int ntohl (int ) ;
 int sdp_pcbbind (struct sdp_sock*,struct sockaddr*,int ) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

__attribute__((used)) static int
sdp_bind(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 int error = 0;
 struct sdp_sock *ssk;
 struct sockaddr_in *sin;

 sin = (struct sockaddr_in *)nam;
 if (nam->sa_len != sizeof (*sin))
  return (EINVAL);
 if (sin->sin_family != AF_INET)
  return (EINVAL);
 if (IN_MULTICAST(ntohl(sin->sin_addr.s_addr)))
  return (EAFNOSUPPORT);

 ssk = sdp_sk(so);
 SDP_WLOCK(ssk);
 if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
  error = EINVAL;
  goto out;
 }
 error = sdp_pcbbind(ssk, nam, td->td_ucred);
out:
 SDP_WUNLOCK(ssk);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_error; } ;
struct sdp_sock {int softerror; int state; struct socket* socket; } ;


 int ETIMEDOUT ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 scalar_t__ TCPS_HAVERCVDSYN (int ) ;
 struct sdp_sock* sdp_closed (struct sdp_sock*) ;
 int sdp_output_reset (struct sdp_sock*) ;

__attribute__((used)) static struct sdp_sock *
sdp_drop(struct sdp_sock *ssk, int errno)
{
 struct socket *so;

 SDP_WLOCK_ASSERT(ssk);
 so = ssk->socket;
 if (TCPS_HAVERCVDSYN(ssk->state))
  sdp_output_reset(ssk);
 if (errno == ETIMEDOUT && ssk->softerror)
  errno = ssk->softerror;
 so->so_error = errno;
 return (sdp_closed(ssk));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_zero; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {scalar_t__ lport; int state; int id; int laddr; struct socket* socket; } ;
typedef int src ;


 int AF_INET ;
 int SDP_RESOLVE_TIMEOUT ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int TCPS_SYN_SENT ;
 int bzero (int *,int) ;
 int rdma_resolve_addr (int ,struct sockaddr*,struct sockaddr*,int ) ;
 int sdp_pcbbind (struct sdp_sock*,struct sockaddr*,int ) ;
 int soisconnecting (struct socket*) ;

__attribute__((used)) static int
sdp_start_connect(struct sdp_sock *ssk, struct sockaddr *nam, struct thread *td)
{
 struct sockaddr_in src;
 struct socket *so;
 int error;

 so = ssk->socket;

 SDP_WLOCK_ASSERT(ssk);
 if (ssk->lport == 0) {
  error = sdp_pcbbind(ssk, (struct sockaddr *)0, td->td_ucred);
  if (error)
   return error;
 }
 src.sin_family = AF_INET;
 src.sin_len = sizeof(src);
 bzero(&src.sin_zero, sizeof(src.sin_zero));
 src.sin_port = ssk->lport;
 src.sin_addr.s_addr = ssk->laddr;
 soisconnecting(so);
 SDP_WUNLOCK(ssk);
 error = -rdma_resolve_addr(ssk->id, (struct sockaddr *)&src, nam,
     SDP_RESOLVE_TIMEOUT);
 SDP_WLOCK(ssk);
 if (error == 0)
  ssk->state = TCPS_SYN_SENT;

 return 0;
}

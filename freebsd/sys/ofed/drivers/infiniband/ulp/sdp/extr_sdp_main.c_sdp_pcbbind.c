
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_3__ sin_addr; int sin_zero; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {scalar_t__ lport; scalar_t__ laddr; TYPE_4__* id; } ;
typedef int null ;
struct TYPE_6__ {int src_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_9__ {TYPE_2__ route; } ;


 int AF_INET ;
 int EINVAL ;
 int ENOMEM ;
 int IB_QPT_RC ;
 scalar_t__ INADDR_ANY ;
 int RDMA_PS_SDP ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int bzero (int *,int) ;
 int init_net ;
 int rdma_bind_addr (TYPE_4__*,struct sockaddr*) ;
 TYPE_4__* rdma_create_id (int *,int ,struct sdp_sock*,int ,int ) ;
 int sdp_cma_handler ;
 int sdp_destroy_cma (struct sdp_sock*) ;

__attribute__((used)) static int
sdp_pcbbind(struct sdp_sock *ssk, struct sockaddr *nam, struct ucred *cred)
{
 struct sockaddr_in *sin;
 struct sockaddr_in null;
 int error;

 SDP_WLOCK_ASSERT(ssk);

 if (ssk->lport != 0 || ssk->laddr != INADDR_ANY)
  return (EINVAL);

 SDP_WUNLOCK(ssk);
 if (ssk->id == ((void*)0))
  ssk->id = rdma_create_id(&init_net, sdp_cma_handler, ssk, RDMA_PS_SDP, IB_QPT_RC);
 if (ssk->id == ((void*)0)) {
  SDP_WLOCK(ssk);
  return (ENOMEM);
 }
 if (nam == ((void*)0)) {
  null.sin_family = AF_INET;
  null.sin_len = sizeof(null);
  null.sin_addr.s_addr = INADDR_ANY;
  null.sin_port = 0;
  bzero(&null.sin_zero, sizeof(null.sin_zero));
  nam = (struct sockaddr *)&null;
 }
 error = -rdma_bind_addr(ssk->id, nam);
 SDP_WLOCK(ssk);
 if (error == 0) {
  sin = (struct sockaddr_in *)&ssk->id->route.addr.src_addr;
  ssk->laddr = sin->sin_addr.s_addr;
  ssk->lport = sin->sin_port;
 } else
  sdp_destroy_cma(ssk);
 return (error);
}

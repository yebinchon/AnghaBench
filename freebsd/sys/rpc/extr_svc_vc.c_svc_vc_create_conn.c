
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockopt {int* sopt_val; int sopt_valsize; int sopt_name; scalar_t__ sopt_level; void* sopt_dir; } ;
struct socket {int so_rcv; TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int sa_len; } ;
struct cf_conn {int strm_stat; } ;
typedef int one ;
struct TYPE_12__ {int xp_idletimeout; int xp_upcallset; int xp_lock; int xp_ltaddr; int xp_rtaddr; int * xp_ops; int * xp_p2; struct cf_conn* xp_p1; struct socket* xp_socket; int * xp_pool; } ;
struct TYPE_11__ {scalar_t__ pr_protocol; TYPE_1__* pr_usrreqs; } ;
struct TYPE_10__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;
typedef TYPE_3__ SVCXPRT ;
typedef int SVCPOOL ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 scalar_t__ IPPROTO_TCP ;
 int M_SONAME ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 scalar_t__ SOL_SOCKET ;
 void* SOPT_SET ;
 int SO_KEEPALIVE ;
 int SO_RCV ;
 int TCP_NODELAY ;
 int XPRT_IDLE ;
 int bzero (struct sockopt*,int) ;
 int free (struct sockaddr*,int ) ;
 struct cf_conn* mem_alloc (int) ;
 int mem_free (struct cf_conn*,int) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int sosetopt (struct socket*,struct sockopt*) ;
 int soupcall_set (struct socket*,int ,int ,TYPE_3__*) ;
 int stub1 (struct socket*,struct sockaddr**) ;
 int svc_vc_ops ;
 int svc_vc_soupcall ;
 TYPE_3__* svc_xprt_alloc () ;
 int svc_xprt_free (TYPE_3__*) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int xprt_active (TYPE_3__*) ;
 int xprt_register (TYPE_3__*) ;

SVCXPRT *
svc_vc_create_conn(SVCPOOL *pool, struct socket *so, struct sockaddr *raddr)
{
 SVCXPRT *xprt;
 struct cf_conn *cd;
 struct sockaddr* sa = ((void*)0);
 struct sockopt opt;
 int one = 1;
 int error;

 bzero(&opt, sizeof(struct sockopt));
 opt.sopt_dir = SOPT_SET;
 opt.sopt_level = SOL_SOCKET;
 opt.sopt_name = SO_KEEPALIVE;
 opt.sopt_val = &one;
 opt.sopt_valsize = sizeof(one);
 error = sosetopt(so, &opt);
 if (error) {
  return (((void*)0));
 }

 if (so->so_proto->pr_protocol == IPPROTO_TCP) {
  bzero(&opt, sizeof(struct sockopt));
  opt.sopt_dir = SOPT_SET;
  opt.sopt_level = IPPROTO_TCP;
  opt.sopt_name = TCP_NODELAY;
  opt.sopt_val = &one;
  opt.sopt_valsize = sizeof(one);
  error = sosetopt(so, &opt);
  if (error) {
   return (((void*)0));
  }
 }

 cd = mem_alloc(sizeof(*cd));
 cd->strm_stat = XPRT_IDLE;

 xprt = svc_xprt_alloc();
 sx_init(&xprt->xp_lock, "xprt->xp_lock");
 xprt->xp_pool = pool;
 xprt->xp_socket = so;
 xprt->xp_p1 = cd;
 xprt->xp_p2 = ((void*)0);
 xprt->xp_ops = &svc_vc_ops;





 xprt->xp_idletimeout = 6 * 60;

 memcpy(&xprt->xp_rtaddr, raddr, raddr->sa_len);

 CURVNET_SET(so->so_vnet);
 error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
 CURVNET_RESTORE();
 if (error)
  goto cleanup_svc_vc_create;

 memcpy(&xprt->xp_ltaddr, sa, sa->sa_len);
 free(sa, M_SONAME);

 xprt_register(xprt);

 SOCKBUF_LOCK(&so->so_rcv);
 xprt->xp_upcallset = 1;
 soupcall_set(so, SO_RCV, svc_vc_soupcall, xprt);
 SOCKBUF_UNLOCK(&so->so_rcv);





 sx_xlock(&xprt->xp_lock);
 xprt_active(xprt);
 sx_xunlock(&xprt->xp_lock);

 return (xprt);
cleanup_svc_vc_create:
 sx_destroy(&xprt->xp_lock);
 svc_xprt_free(xprt);
 mem_free(cd, sizeof(*cd));

 return (((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yp_data {int * yp_trans_tcp; int * yp_trans_udp; int yd_events; } ;
struct env {struct yp_data* sc_yp; } ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int RPC_ANYSOCK ;
 int TAILQ_INIT (int *) ;
 int YPPROG ;
 int YPVERS ;
 struct yp_data* calloc (int,int) ;
 struct env* env ;
 int fatal (char*) ;
 int pmap_unset (int ,int ) ;
 int svc_register (int *,int ,int ,int ,int ) ;
 int * svctcp_create (int ,int ,int ) ;
 int * svcudp_create (int ) ;
 int yp_dispatch ;

void
yp_init(struct env *x_env)
{
 struct yp_data *yp;

 if ((yp = calloc(1, sizeof(*yp))) == ((void*)0))
  fatal(((void*)0));
 TAILQ_INIT(&yp->yd_events);

 env = x_env;
 env->sc_yp = yp;

 (void)pmap_unset(YPPROG, YPVERS);

 if ((yp->yp_trans_udp = svcudp_create(RPC_ANYSOCK)) == ((void*)0))
  fatal("cannot create udp service");
 if ((yp->yp_trans_tcp = svctcp_create(RPC_ANYSOCK, 0, 0)) == ((void*)0))
  fatal("cannot create tcp service");

 if (!svc_register(yp->yp_trans_udp, YPPROG, YPVERS,
     yp_dispatch, IPPROTO_UDP)) {
  fatal("unable to register (YPPROG, YPVERS, udp)");
 }
 if (!svc_register(yp->yp_trans_tcp, YPPROG, YPVERS,
     yp_dispatch, IPPROTO_TCP)) {
  fatal("unable to register (YPPROG, YPVERS, tcp)");
 }
}

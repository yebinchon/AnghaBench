
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rj_stat; scalar_t__ rj_why; } ;
struct TYPE_4__ {scalar_t__ rp_stat; TYPE_1__ rp_rjct; } ;
struct rpc_msg {TYPE_2__ rm_reply; } ;
struct rpc_gss_data {scalar_t__ gd_state; int gd_lock; } ;
typedef int rpc_gss_options_ret_t ;
typedef int options ;
typedef int bool_t ;
typedef int AUTH ;


 scalar_t__ AUTH_ERROR ;
 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int FALSE ;
 scalar_t__ MSG_DENIED ;
 scalar_t__ RPCSEC_GSS_CREDPROBLEM ;
 scalar_t__ RPCSEC_GSS_CTXPROBLEM ;
 scalar_t__ RPCSEC_GSS_DESTROYING ;
 int memset (int *,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rpc_gss_destroy_context (int *,int ) ;
 int rpc_gss_init (int *,int *) ;

__attribute__((used)) static bool_t
rpc_gss_refresh(AUTH *auth, void *msg)
{
 struct rpc_msg *reply = (struct rpc_msg *) msg;
 rpc_gss_options_ret_t options;
 struct rpc_gss_data *gd;

 gd = AUTH_PRIVATE(auth);





 mtx_lock(&gd->gd_lock);
 if (gd->gd_state == RPCSEC_GSS_DESTROYING) {
  mtx_unlock(&gd->gd_lock);
  return (FALSE);
 }
 mtx_unlock(&gd->gd_lock);






 if (reply->rm_reply.rp_stat == MSG_DENIED
     && reply->rm_reply.rp_rjct.rj_stat == AUTH_ERROR
     && (reply->rm_reply.rp_rjct.rj_why == RPCSEC_GSS_CREDPROBLEM
  || reply->rm_reply.rp_rjct.rj_why == RPCSEC_GSS_CTXPROBLEM)) {
  rpc_gss_destroy_context(auth, FALSE);
  memset(&options, 0, sizeof(options));
  return (rpc_gss_init(auth, &options));
 }

 return (FALSE);
}

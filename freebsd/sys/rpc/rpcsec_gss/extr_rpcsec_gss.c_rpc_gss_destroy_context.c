
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct rpc_pending_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ length; } ;
struct TYPE_4__ {TYPE_1__ gc_handle; int gc_proc; } ;
struct rpc_gss_data {scalar_t__ gd_state; scalar_t__ gd_ctx; int gd_lock; TYPE_2__ gd_cred; int gd_reqs; int gd_clnt; } ;
struct rpc_callextra {int * rc_auth; } ;
typedef int ext ;
typedef scalar_t__ bool_t ;
typedef int OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 int CLNT_CALL_EXT (int ,struct rpc_callextra*,int ,int ,int *,int ,int *,int ) ;
 scalar_t__ GSS_C_NO_CONTEXT ;
 struct rpc_pending_request* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct rpc_pending_request*,int ) ;
 int NULLPROC ;
 int RPCSEC_GSS_DESTROY ;
 scalar_t__ RPCSEC_GSS_DESTROYING ;
 scalar_t__ RPCSEC_GSS_ESTABLISHED ;
 scalar_t__ RPCSEC_GSS_START ;
 int bzero (struct rpc_callextra*,int) ;
 int gss_delete_sec_context (int *,scalar_t__*,int *) ;
 int mem_free (struct rpc_pending_request*,int) ;
 int msleep (struct rpc_gss_data*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pr_link ;
 int rpc_gss_log_debug (char*) ;
 int wakeup (struct rpc_gss_data*) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_gss_buffer_desc ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
rpc_gss_destroy_context(AUTH *auth, bool_t send_destroy)
{
 struct rpc_gss_data *gd;
 struct rpc_pending_request *pr;
 OM_uint32 min_stat;
 struct rpc_callextra ext;

 rpc_gss_log_debug("in rpc_gss_destroy_context()");

 gd = AUTH_PRIVATE(auth);

 mtx_lock(&gd->gd_lock);




 if (gd->gd_state != RPCSEC_GSS_ESTABLISHED) {
  while (gd->gd_state != RPCSEC_GSS_START
      && gd->gd_state != RPCSEC_GSS_ESTABLISHED)
   msleep(gd, &gd->gd_lock, 0, "gssstate", 0);
  mtx_unlock(&gd->gd_lock);
  return;
 }
 gd->gd_state = RPCSEC_GSS_DESTROYING;
 mtx_unlock(&gd->gd_lock);

 if (send_destroy) {
  gd->gd_cred.gc_proc = RPCSEC_GSS_DESTROY;
  bzero(&ext, sizeof(ext));
  ext.rc_auth = auth;
  CLNT_CALL_EXT(gd->gd_clnt, &ext, NULLPROC,
      (xdrproc_t)xdr_void, ((void*)0),
      (xdrproc_t)xdr_void, ((void*)0), AUTH_TIMEOUT);
 }

 while ((pr = LIST_FIRST(&gd->gd_reqs)) != ((void*)0)) {
  LIST_REMOVE(pr, pr_link);
  mem_free(pr, sizeof(*pr));
 }





 xdr_free((xdrproc_t) xdr_gss_buffer_desc,
     (char *) &gd->gd_cred.gc_handle);
 gd->gd_cred.gc_handle.length = 0;

 if (gd->gd_ctx != GSS_C_NO_CONTEXT)
  gss_delete_sec_context(&min_stat, &gd->gd_ctx, ((void*)0));

 mtx_lock(&gd->gd_lock);
 gd->gd_state = RPCSEC_GSS_START;
 wakeup(gd);
 mtx_unlock(&gd->gd_lock);
}

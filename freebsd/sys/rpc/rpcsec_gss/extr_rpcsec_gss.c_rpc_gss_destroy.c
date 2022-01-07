
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_2__ {scalar_t__ value; } ;
struct rpc_gss_data {int gd_lock; TYPE_1__ gd_verf; int * gd_clntprincipal; int * gd_principal; int gd_ucred; int gd_clnt; int gd_refs; } ;
typedef struct rpc_gss_data AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (struct rpc_gss_data*) ;
 int CLNT_RELEASE (int ) ;
 int M_RPC ;
 int TRUE ;
 int crfree (int ) ;
 int free (int *,int ) ;
 int mem_free (struct rpc_gss_data*,int) ;
 int mtx_destroy (int *) ;
 int refcount_release (int *) ;
 int rpc_gss_destroy_context (struct rpc_gss_data*,int ) ;
 int rpc_gss_log_debug (char*) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_gss_buffer_desc ;

__attribute__((used)) static void
rpc_gss_destroy(AUTH *auth)
{
 struct rpc_gss_data *gd;

 rpc_gss_log_debug("in rpc_gss_destroy()");

 gd = AUTH_PRIVATE(auth);

 if (!refcount_release(&gd->gd_refs))
  return;

 rpc_gss_destroy_context(auth, TRUE);

 CLNT_RELEASE(gd->gd_clnt);
 crfree(gd->gd_ucred);
 free(gd->gd_principal, M_RPC);
 if (gd->gd_clntprincipal != ((void*)0))
  free(gd->gd_clntprincipal, M_RPC);
 if (gd->gd_verf.value)
  xdr_free((xdrproc_t) xdr_gss_buffer_desc,
      (char *) &gd->gd_verf);
 mtx_destroy(&gd->gd_lock);

 mem_free(gd, sizeof(*gd));
 mem_free(auth, sizeof(*auth));
}

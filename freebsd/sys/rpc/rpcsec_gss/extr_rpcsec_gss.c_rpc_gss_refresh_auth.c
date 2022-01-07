
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_gss_data {scalar_t__ gd_state; } ;
typedef int rpc_gss_options_ret_t ;
typedef int options ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 scalar_t__ RPCSEC_GSS_ESTABLISHED ;
 int memset (int *,int ,int) ;
 int rpc_gss_init (int *,int *) ;

void
rpc_gss_refresh_auth(AUTH *auth)
{
 struct rpc_gss_data *gd;
 rpc_gss_options_ret_t options;

 gd = AUTH_PRIVATE(auth);






 if (gd->gd_state != RPCSEC_GSS_ESTABLISHED) {
  memset(&options, 0, sizeof (options));
  (void) rpc_gss_init(auth, &options);
 }
}

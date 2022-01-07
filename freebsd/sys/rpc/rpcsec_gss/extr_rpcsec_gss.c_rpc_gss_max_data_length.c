
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc_svc; } ;
struct rpc_gss_data {int gd_mech; int gd_qop; int gd_ctx; TYPE_1__ gd_cred; } ;
typedef scalar_t__ OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 scalar_t__ gss_wrap_size_limit (scalar_t__*,int ,int,int ,int,scalar_t__*) ;
 int rpc_gss_log_status (char*,int ,scalar_t__,scalar_t__) ;





int
rpc_gss_max_data_length(AUTH *auth, int max_tp_unit_len)
{
 struct rpc_gss_data *gd;
 int want_conf;
 OM_uint32 max;
 OM_uint32 maj_stat, min_stat;
 int result;

 gd = AUTH_PRIVATE(auth);

 switch (gd->gd_cred.gc_svc) {
 case 129:
  return (max_tp_unit_len);
  break;

 case 131:
 case 130:
  want_conf = FALSE;
  break;

 case 128:
  want_conf = TRUE;
  break;

 default:
  return (0);
 }

 maj_stat = gss_wrap_size_limit(&min_stat, gd->gd_ctx, want_conf,
     gd->gd_qop, max_tp_unit_len, &max);

 if (maj_stat == GSS_S_COMPLETE) {
  result = (int) max;
  if (result < 0)
   result = 0;
  return (result);
 } else {
  rpc_gss_log_status("gss_wrap_size_limit", gd->gd_mech,
      maj_stat, min_stat);
  return (0);
 }
}

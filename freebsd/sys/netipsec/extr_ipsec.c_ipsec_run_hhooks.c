
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_ctx_data {int af; int ** mp; } ;




 int EACCES ;
 int EPFNOSUPPORT ;
 int HHOOKS_RUN_IF (int ,struct ipsec_ctx_data*,int *) ;
 int HHOOK_IPSEC_INET ;
 int HHOOK_IPSEC_INET6 ;
 int HHOOK_TYPE_IPSEC_IN ;
 int * V_ipsec_hhh_in ;
 int * V_ipsec_hhh_out ;

int
ipsec_run_hhooks(struct ipsec_ctx_data *ctx, int type)
{
 int idx;

 switch (ctx->af) {
 default:
  return (EPFNOSUPPORT);
 }
 if (type == HHOOK_TYPE_IPSEC_IN)
  HHOOKS_RUN_IF(V_ipsec_hhh_in[idx], ctx, ((void*)0));
 else
  HHOOKS_RUN_IF(V_ipsec_hhh_out[idx], ctx, ((void*)0));
 if (*ctx->mp == ((void*)0))
  return (EACCES);
 return (0);
}

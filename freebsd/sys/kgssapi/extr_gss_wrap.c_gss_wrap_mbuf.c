
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ KGSS_WRAP (int const,scalar_t__*,int,int ,struct mbuf**,int*) ;

OM_uint32
gss_wrap_mbuf(OM_uint32 *minor_status, const gss_ctx_id_t ctx,
    int conf_req_flag, gss_qop_t qop_req, struct mbuf **mp, int *conf_state)
{

 if (!ctx) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }

 return (KGSS_WRAP(ctx, minor_status, conf_req_flag, qop_req,
  mp, conf_state));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ KGSS_VERIFY_MIC (int const,scalar_t__*,struct mbuf*,struct mbuf*,int *) ;

OM_uint32
gss_verify_mic_mbuf(OM_uint32 *minor_status, const gss_ctx_id_t ctx,
    struct mbuf *m, struct mbuf *mic, gss_qop_t *qop_state)
{

 if (!ctx) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }

 return (KGSS_VERIFY_MIC(ctx, minor_status, m, mic, qop_state));
}

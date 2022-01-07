
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct krb5_context {scalar_t__ kc_lifetime; TYPE_2__* kc_tokenkey; } ;
typedef scalar_t__ gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
struct TYPE_4__ {TYPE_1__* ks_class; } ;
struct TYPE_3__ {int ec_type; } ;
typedef scalar_t__ OM_uint32 ;






 scalar_t__ GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_S_BAD_QOP ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ krb5_get_mic_new (struct krb5_context*,struct mbuf*,struct mbuf**) ;
 scalar_t__ krb5_get_mic_old (struct krb5_context*,struct mbuf*,struct mbuf**,int ) ;
 int sgn_alg_des3_sha1 ;
 int sgn_alg_des_md5 ;
 int sgn_alg_hmac_md5 ;
 scalar_t__ time_uptime ;

__attribute__((used)) static OM_uint32
krb5_get_mic(gss_ctx_id_t ctx, OM_uint32 *minor_status,
    gss_qop_t qop_req, struct mbuf *m, struct mbuf **micp)
{
 struct krb5_context *kc = (struct krb5_context *)ctx;

 *minor_status = 0;

 if (qop_req != GSS_C_QOP_DEFAULT)
  return (GSS_S_BAD_QOP);

 if (time_uptime > kc->kc_lifetime)
  return (GSS_S_CONTEXT_EXPIRED);

 switch (kc->kc_tokenkey->ks_class->ec_type) {
 case 128:
  return (krb5_get_mic_old(kc, m, micp, sgn_alg_des_md5));

 case 129:
  return (krb5_get_mic_old(kc, m, micp, sgn_alg_des3_sha1));

 case 131:
 case 130:
  return (krb5_get_mic_old(kc, m, micp, sgn_alg_hmac_md5));

 default:
  return (krb5_get_mic_new(kc, m, micp));
 }

 return (GSS_S_FAILURE);
}

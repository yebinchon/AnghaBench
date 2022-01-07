
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct krb5_context {scalar_t__ kc_lifetime; TYPE_2__* kc_tokenkey; } ;
typedef int gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
struct TYPE_4__ {TYPE_1__* ks_class; } ;
struct TYPE_3__ {int ec_type; } ;
typedef scalar_t__ OM_uint32 ;






 int GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_ERROR (scalar_t__) ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ krb5_unwrap_new (struct krb5_context*,struct mbuf**,int*) ;
 scalar_t__ krb5_unwrap_old (struct krb5_context*,struct mbuf**,int*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int seal_alg_des ;
 int seal_alg_des3 ;
 int seal_alg_rc4 ;
 int sgn_alg_des3_sha1 ;
 int sgn_alg_des_md5 ;
 int sgn_alg_hmac_md5 ;
 scalar_t__ time_uptime ;

__attribute__((used)) static OM_uint32
krb5_unwrap(gss_ctx_id_t ctx, OM_uint32 *minor_status,
    struct mbuf **mp, int *conf_state, gss_qop_t *qop_state)
{
 struct krb5_context *kc = (struct krb5_context *)ctx;
 OM_uint32 maj_stat;

 *minor_status = 0;
 if (qop_state)
  *qop_state = GSS_C_QOP_DEFAULT;
 if (conf_state)
  *conf_state = 0;

 if (time_uptime > kc->kc_lifetime)
  return (GSS_S_CONTEXT_EXPIRED);

 switch (kc->kc_tokenkey->ks_class->ec_type) {
 case 128:
  maj_stat = krb5_unwrap_old(kc, mp, conf_state,
   sgn_alg_des_md5, seal_alg_des);
  break;

 case 131:
 case 130:
  maj_stat = krb5_unwrap_old(kc, mp, conf_state,
   sgn_alg_hmac_md5, seal_alg_rc4);
  break;

 case 129:
  maj_stat = krb5_unwrap_old(kc, mp, conf_state,
   sgn_alg_des3_sha1, seal_alg_des3);
  break;

 default:
  maj_stat = krb5_unwrap_new(kc, mp, conf_state);
  break;
 }

 if (GSS_ERROR(maj_stat)) {
  m_freem(*mp);
  *mp = ((void*)0);
 }

 return (maj_stat);
}

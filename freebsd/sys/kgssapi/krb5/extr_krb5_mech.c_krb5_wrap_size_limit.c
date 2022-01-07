
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct krb5_encryption_class {int ec_type; int ec_checksumlen; int ec_msgblocklen; int ec_blocklen; } ;
struct krb5_context {TYPE_1__* kc_tokenkey; } ;
typedef scalar_t__ gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {struct krb5_encryption_class* ks_class; } ;
typedef scalar_t__ OM_uint32 ;






 scalar_t__ GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_S_BAD_QOP ;
 scalar_t__ GSS_S_COMPLETE ;
 TYPE_2__ krb5_mech_oid ;

__attribute__((used)) static OM_uint32
krb5_wrap_size_limit(gss_ctx_id_t ctx, OM_uint32 *minor_status,
    int conf_req_flag, gss_qop_t qop_req, OM_uint32 req_output_size,
    OM_uint32 *max_input_size)
{
 struct krb5_context *kc = (struct krb5_context *)ctx;
 const struct krb5_encryption_class *ec;
 OM_uint32 overhead;

 *minor_status = 0;
 *max_input_size = 0;

 if (qop_req != GSS_C_QOP_DEFAULT)
  return (GSS_S_BAD_QOP);

 ec = kc->kc_tokenkey->ks_class;
 switch (ec->ec_type) {
 case 128:
 case 129:
 case 131:
 case 130:
  overhead = 5 + 2 + krb5_mech_oid.length;
  overhead += 8 + 8 + ec->ec_msgblocklen;
  overhead += ec->ec_checksumlen;
  break;

 default:
  if (conf_req_flag) {







   overhead = 16 + ec->ec_blocklen;
   overhead += ec->ec_msgblocklen - 1;
   overhead += 16;
   overhead += ec->ec_checksumlen;
  } else {



   overhead = 16 + ec->ec_checksumlen;
  }
 }

 *max_input_size = req_output_size - overhead;

 return (GSS_S_COMPLETE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* kd_data; } ;
struct krb5_keyblock {int kk_type; TYPE_1__ kk_key; } ;
struct krb5_key_state {int* ks_key; int ks_refs; } ;
struct krb5_encryption_class {int ec_keylen; } ;
struct krb5_context {int kc_more_flags; void* kc_recv_sign_Kc; void* kc_recv_seal_Kc; void* kc_recv_seal_Ki; void* kc_recv_seal_Ke; void* kc_send_sign_Kc; void* kc_send_seal_Kc; void* kc_send_seal_Ki; void* kc_send_seal_Ke; struct krb5_key_state* kc_encryptkey; struct krb5_key_state* kc_checksumkey; struct krb5_key_state* kc_tokenkey; } ;
typedef int OM_uint32 ;


 int ACCEPTOR_SUBKEY ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int KG_USAGE_ACCEPTOR_SEAL ;
 int KG_USAGE_ACCEPTOR_SIGN ;
 int KG_USAGE_INITIATOR_SEAL ;
 int KG_USAGE_INITIATOR_SIGN ;
 int KG_USAGE_SIGN ;
 int get_acceptor_subkey (struct krb5_context*,struct krb5_keyblock**) ;
 int get_initiator_subkey (struct krb5_context*,struct krb5_keyblock**) ;
 int is_initiator (struct krb5_context*) ;
 struct krb5_key_state* krb5_create_key (struct krb5_encryption_class*) ;
 struct krb5_encryption_class* krb5_find_encryption_class (int) ;
 void* krb5_get_checksum_key (struct krb5_key_state*,int ) ;
 void* krb5_get_encryption_key (struct krb5_key_state*,int ) ;
 void* krb5_get_integrity_key (struct krb5_key_state*,int ) ;
 int krb5_set_key (struct krb5_key_state*,int*) ;
 int refcount_acquire (int *) ;

__attribute__((used)) static OM_uint32
get_keys(struct krb5_context *kc)
{
 struct krb5_keyblock *keydata;
 struct krb5_encryption_class *ec;
 struct krb5_key_state *key;
 int etype;

 keydata = ((void*)0);
 get_acceptor_subkey(kc, &keydata);
 if (!keydata)
  if ((kc->kc_more_flags & ACCEPTOR_SUBKEY) == 0)
   get_initiator_subkey(kc, &keydata);
 if (!keydata)
  return (GSS_S_FAILURE);





 switch (keydata->kk_type) {
 case 131:
 case 130:
 case 129:
  etype = 131;
  break;

 case 133:
 case 132:
 case 128:
  etype = 132;
  break;

 default:
  etype = keydata->kk_type;
 }

 ec = krb5_find_encryption_class(etype);
 if (!ec)
  return (GSS_S_FAILURE);

 key = krb5_create_key(ec);
 krb5_set_key(key, keydata->kk_key.kd_data);
 kc->kc_tokenkey = key;

 switch (etype) {
 case 131:
 case 135:
 case 134: {





  struct krb5_key_state *ekey;
  uint8_t *ekp, *kp;
  int i;

  ekey = krb5_create_key(ec);
  ekp = ekey->ks_key;
  kp = key->ks_key;
  for (i = 0; i < ec->ec_keylen; i++)
   ekp[i] = kp[i] ^ 0xf0;
  krb5_set_key(ekey, ekp);
  kc->kc_encryptkey = ekey;
  refcount_acquire(&key->ks_refs);
  kc->kc_checksumkey = key;
  break;
 }

 case 132:






  kc->kc_checksumkey = krb5_get_checksum_key(key, KG_USAGE_SIGN);
  refcount_acquire(&key->ks_refs);
  kc->kc_encryptkey = key;
  break;

 default:




  if (is_initiator(kc)) {



   kc->kc_send_seal_Ke = krb5_get_encryption_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_send_seal_Ki = krb5_get_integrity_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_send_seal_Kc = krb5_get_checksum_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_send_sign_Kc = krb5_get_checksum_key(key,
       KG_USAGE_INITIATOR_SIGN);

   kc->kc_recv_seal_Ke = krb5_get_encryption_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_recv_seal_Ki = krb5_get_integrity_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_recv_seal_Kc = krb5_get_checksum_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_recv_sign_Kc = krb5_get_checksum_key(key,
       KG_USAGE_ACCEPTOR_SIGN);
  } else {



   kc->kc_send_seal_Ke = krb5_get_encryption_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_send_seal_Ki = krb5_get_integrity_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_send_seal_Kc = krb5_get_checksum_key(key,
       KG_USAGE_ACCEPTOR_SEAL);
   kc->kc_send_sign_Kc = krb5_get_checksum_key(key,
       KG_USAGE_ACCEPTOR_SIGN);

   kc->kc_recv_seal_Ke = krb5_get_encryption_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_recv_seal_Ki = krb5_get_integrity_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_recv_seal_Kc = krb5_get_checksum_key(key,
       KG_USAGE_INITIATOR_SEAL);
   kc->kc_recv_sign_Kc = krb5_get_checksum_key(key,
       KG_USAGE_INITIATOR_SIGN);
  }
  break;
 }

 return (GSS_S_COMPLETE);
}

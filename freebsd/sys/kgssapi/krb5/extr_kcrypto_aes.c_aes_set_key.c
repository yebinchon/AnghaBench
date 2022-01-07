
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct krb5_key_state {void* ks_key; TYPE_1__* ks_class; struct aes_state* ks_priv; } ;
struct cryptoini {int cri_mlen; int * cri_next; void* cri_key; int cri_klen; int cri_alg; } ;
struct aes_state {scalar_t__ as_session_aes; scalar_t__ as_session_sha1; } ;
typedef int cri ;
struct TYPE_2__ {int ec_keybits; int ec_keylen; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SOFTWARE ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_SHA1_HMAC ;
 int bcopy (void const*,void*,int ) ;
 int bzero (struct cryptoini*,int) ;
 int crypto_freesession (scalar_t__) ;
 int crypto_newsession (scalar_t__*,struct cryptoini*,int) ;

__attribute__((used)) static void
aes_set_key(struct krb5_key_state *ks, const void *in)
{
 void *kp = ks->ks_key;
 struct aes_state *as = ks->ks_priv;
 struct cryptoini cri;

 if (kp != in)
  bcopy(in, kp, ks->ks_class->ec_keylen);

 if (as->as_session_aes != 0)
  crypto_freesession(as->as_session_aes);
 if (as->as_session_sha1 != 0)
  crypto_freesession(as->as_session_sha1);




 bzero(&cri, sizeof(cri));
 cri.cri_alg = CRYPTO_SHA1_HMAC;
 cri.cri_klen = ks->ks_class->ec_keybits;
 cri.cri_mlen = 12;
 cri.cri_key = ks->ks_key;
 cri.cri_next = ((void*)0);
 crypto_newsession(&as->as_session_sha1, &cri,
     CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE);

 bzero(&cri, sizeof(cri));
 cri.cri_alg = CRYPTO_AES_CBC;
 cri.cri_klen = ks->ks_class->ec_keybits;
 cri.cri_mlen = 0;
 cri.cri_key = ks->ks_key;
 cri.cri_next = ((void*)0);
 crypto_newsession(&as->as_session_aes, &cri,
     CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE);
}

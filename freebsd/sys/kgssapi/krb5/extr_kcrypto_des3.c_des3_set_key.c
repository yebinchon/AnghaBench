
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct krb5_key_state {void* ks_key; TYPE_1__* ks_class; struct des3_state* ks_priv; } ;
struct des3_state {scalar_t__ ds_session; } ;
struct cryptoini {int cri_klen; struct cryptoini* cri_next; void* cri_key; scalar_t__ cri_mlen; int cri_alg; } ;
typedef int cri ;
struct TYPE_2__ {int ec_keylen; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SOFTWARE ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_SHA1_HMAC ;
 int bcopy (void const*,void*,int ) ;
 int bzero (struct cryptoini*,int) ;
 int crypto_freesession (scalar_t__) ;
 int crypto_newsession (scalar_t__*,struct cryptoini*,int) ;

__attribute__((used)) static void
des3_set_key(struct krb5_key_state *ks, const void *in)
{
 void *kp = ks->ks_key;
 struct des3_state *ds = ks->ks_priv;
 struct cryptoini cri[2];

 if (kp != in)
  bcopy(in, kp, ks->ks_class->ec_keylen);

 if (ds->ds_session)
  crypto_freesession(ds->ds_session);

 bzero(cri, sizeof(cri));

 cri[0].cri_alg = CRYPTO_SHA1_HMAC;
 cri[0].cri_klen = 192;
 cri[0].cri_mlen = 0;
 cri[0].cri_key = ks->ks_key;
 cri[0].cri_next = &cri[1];

 cri[1].cri_alg = CRYPTO_3DES_CBC;
 cri[1].cri_klen = 192;
 cri[1].cri_mlen = 0;
 cri[1].cri_key = ks->ks_key;
 cri[1].cri_next = ((void*)0);

 crypto_newsession(&ds->ds_session, cri,
     CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE);
}

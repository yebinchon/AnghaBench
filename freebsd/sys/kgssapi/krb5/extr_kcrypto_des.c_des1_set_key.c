
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct krb5_key_state {void* ks_key; TYPE_1__* ks_class; struct des1_state* ks_priv; } ;
struct des1_state {scalar_t__ ds_session; } ;
struct cryptoini {int cri_klen; int * cri_next; void* cri_key; scalar_t__ cri_mlen; int cri_alg; } ;
typedef int cri ;
struct TYPE_2__ {int ec_keylen; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTOCAP_F_SOFTWARE ;
 int CRYPTO_DES_CBC ;
 int bcopy (void const*,void*,int ) ;
 int bzero (struct cryptoini*,int) ;
 int crypto_freesession (scalar_t__) ;
 int crypto_newsession (scalar_t__*,struct cryptoini*,int) ;

__attribute__((used)) static void
des1_set_key(struct krb5_key_state *ks, const void *in)
{
 void *kp = ks->ks_key;
 struct des1_state *ds = ks->ks_priv;
 struct cryptoini cri[1];

 if (kp != in)
  bcopy(in, kp, ks->ks_class->ec_keylen);

 if (ds->ds_session)
  crypto_freesession(ds->ds_session);

 bzero(cri, sizeof(cri));

 cri[0].cri_alg = CRYPTO_DES_CBC;
 cri[0].cri_klen = 64;
 cri[0].cri_mlen = 0;
 cri[0].cri_key = ks->ks_key;
 cri[0].cri_next = ((void*)0);

 crypto_newsession(&ds->ds_session, cri,
     CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE);
}

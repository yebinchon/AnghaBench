
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ keylen; int key; } ;
typedef TYPE_1__ sctp_key_t ;
typedef int sctp_hash_context_t ;


 int SCTP_AUTH_DIGEST_LEN_MAX ;
 int memcpy (int ,int *,scalar_t__) ;
 scalar_t__ sctp_get_hmac_block_len (int ) ;
 scalar_t__ sctp_get_hmac_digest_len (int ) ;
 scalar_t__ sctp_hmac (int ,int ,scalar_t__,int *,scalar_t__,int *) ;
 int sctp_hmac_final (int ,int *,int *) ;
 int sctp_hmac_init (int ,int *) ;
 int sctp_hmac_update (int ,int *,int ,scalar_t__) ;

uint32_t
sctp_compute_hmac(uint16_t hmac_algo, sctp_key_t *key, uint8_t *text,
    uint32_t textlen, uint8_t *digest)
{
 uint32_t digestlen;
 uint32_t blocklen;
 sctp_hash_context_t ctx;
 uint8_t temp[SCTP_AUTH_DIGEST_LEN_MAX];


 if ((key == ((void*)0)) || (text == ((void*)0)) || (textlen == 0) ||
     (digest == ((void*)0))) {

  return (0);
 }

 digestlen = sctp_get_hmac_digest_len(hmac_algo);
 if (digestlen == 0)
  return (0);


 blocklen = sctp_get_hmac_block_len(hmac_algo);
 if (key->keylen > blocklen) {
  sctp_hmac_init(hmac_algo, &ctx);
  sctp_hmac_update(hmac_algo, &ctx, key->key, key->keylen);
  sctp_hmac_final(hmac_algo, &ctx, temp);

  key->keylen = digestlen;
  memcpy(key->key, temp, key->keylen);
 }
 return (sctp_hmac(hmac_algo, key->key, key->keylen, text, textlen,
     digest));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int sctp_hash_context_t ;


 int SCTP_AUTH_DIGEST_LEN_MAX ;
 int memcpy (int*,int*,scalar_t__) ;
 int memset (int*,int ,scalar_t__) ;
 scalar_t__ sctp_get_hmac_block_len (int ) ;
 scalar_t__ sctp_get_hmac_digest_len (int ) ;
 int sctp_hmac_final (int ,int *,int*) ;
 int sctp_hmac_init (int ,int *) ;
 int sctp_hmac_update (int ,int *,int*,scalar_t__) ;

uint32_t
sctp_hmac(uint16_t hmac_algo, uint8_t *key, uint32_t keylen,
    uint8_t *text, uint32_t textlen, uint8_t *digest)
{
 uint32_t digestlen;
 uint32_t blocklen;
 sctp_hash_context_t ctx;
 uint8_t ipad[128], opad[128];
 uint8_t temp[SCTP_AUTH_DIGEST_LEN_MAX];
 uint32_t i;


 if ((key == ((void*)0)) || (keylen == 0) || (text == ((void*)0)) ||
     (textlen == 0) || (digest == ((void*)0))) {

  return (0);
 }

 digestlen = sctp_get_hmac_digest_len(hmac_algo);
 if (digestlen == 0)
  return (0);


 blocklen = sctp_get_hmac_block_len(hmac_algo);
 if (keylen > blocklen) {
  sctp_hmac_init(hmac_algo, &ctx);
  sctp_hmac_update(hmac_algo, &ctx, key, keylen);
  sctp_hmac_final(hmac_algo, &ctx, temp);

  keylen = digestlen;
  key = temp;
 }

 memset(ipad, 0, blocklen);
 memset(opad, 0, blocklen);
 memcpy(ipad, key, keylen);
 memcpy(opad, key, keylen);


 for (i = 0; i < blocklen; i++) {
  ipad[i] ^= 0x36;
  opad[i] ^= 0x5c;
 }


 sctp_hmac_init(hmac_algo, &ctx);
 sctp_hmac_update(hmac_algo, &ctx, ipad, blocklen);
 sctp_hmac_update(hmac_algo, &ctx, text, textlen);
 sctp_hmac_final(hmac_algo, &ctx, temp);


 sctp_hmac_init(hmac_algo, &ctx);
 sctp_hmac_update(hmac_algo, &ctx, opad, blocklen);
 sctp_hmac_update(hmac_algo, &ctx, temp, digestlen);
 sctp_hmac_final(hmac_algo, &ctx, digest);

 return (digestlen);
}

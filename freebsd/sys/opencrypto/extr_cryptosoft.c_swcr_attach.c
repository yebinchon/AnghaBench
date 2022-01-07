
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swcr_session {int dummy; } ;
typedef int device_t ;


 int CRYPTOCAP_F_SOFTWARE ;
 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_AES_128_NIST_GMAC ;
 int CRYPTO_AES_192_NIST_GMAC ;
 int CRYPTO_AES_256_NIST_GMAC ;
 int CRYPTO_AES_CCM_16 ;
 int CRYPTO_AES_CCM_CBC_MAC ;
 int CRYPTO_AES_ICM ;
 int CRYPTO_AES_NIST_GCM_16 ;
 int CRYPTO_AES_NIST_GMAC ;
 int CRYPTO_AES_XTS ;
 int CRYPTO_BLAKE2B ;
 int CRYPTO_BLAKE2S ;
 int CRYPTO_BLF_CBC ;
 int CRYPTO_CAMELLIA_CBC ;
 int CRYPTO_CAST_CBC ;
 int CRYPTO_CHACHA20 ;
 int CRYPTO_DEFLATE_COMP ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5 ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_MD5_KPDK ;
 int CRYPTO_NULL_CBC ;
 int CRYPTO_NULL_HMAC ;
 int CRYPTO_POLY1305 ;
 int CRYPTO_RIJNDAEL128_CBC ;
 int CRYPTO_RIPEMD160_HMAC ;
 int CRYPTO_SHA1 ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA1_KPDK ;
 int CRYPTO_SHA2_224 ;
 int CRYPTO_SHA2_224_HMAC ;
 int CRYPTO_SHA2_256 ;
 int CRYPTO_SHA2_256_HMAC ;
 int CRYPTO_SHA2_384 ;
 int CRYPTO_SHA2_384_HMAC ;
 int CRYPTO_SHA2_512 ;
 int CRYPTO_SHA2_512_HMAC ;
 int CRYPTO_SKIPJACK_CBC ;
 int ENOMEM ;
 int HMAC_IPAD_VAL ;
 int HMAC_MAX_BLOCK_LEN ;
 int HMAC_OPAD_VAL ;
 int REGISTER (int ) ;
 scalar_t__ crypto_get_driverid (int ,int,int) ;
 int device_printf (int ,char*) ;
 int hmac_ipad_buffer ;
 int hmac_opad_buffer ;
 int memset (int ,int ,int ) ;
 scalar_t__ swcr_id ;

__attribute__((used)) static int
swcr_attach(device_t dev)
{
 memset(hmac_ipad_buffer, HMAC_IPAD_VAL, HMAC_MAX_BLOCK_LEN);
 memset(hmac_opad_buffer, HMAC_OPAD_VAL, HMAC_MAX_BLOCK_LEN);

 swcr_id = crypto_get_driverid(dev, sizeof(struct swcr_session),
   CRYPTOCAP_F_SOFTWARE | CRYPTOCAP_F_SYNC);
 if (swcr_id < 0) {
  device_printf(dev, "cannot initialize!");
  return ENOMEM;
 }


 crypto_register(swcr_id, CRYPTO_DES_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_3DES_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_BLF_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_CAST_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_SKIPJACK_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_NULL_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_MD5_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA1_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_224_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_256_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_384_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_512_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_RIPEMD160_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_NULL_HMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_MD5_KPDK, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA1_KPDK, 0,0);
 crypto_register(swcr_id, CRYPTO_MD5, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA1, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_224, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_256, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_384, 0,0);
 crypto_register(swcr_id, CRYPTO_SHA2_512, 0,0);
 crypto_register(swcr_id, CRYPTO_RIJNDAEL128_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_XTS, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_ICM, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_NIST_GCM_16, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_NIST_GMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_128_NIST_GMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_192_NIST_GMAC, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_256_NIST_GMAC, 0,0);
  crypto_register(swcr_id, CRYPTO_CAMELLIA_CBC, 0,0);
 crypto_register(swcr_id, CRYPTO_DEFLATE_COMP, 0,0);
 crypto_register(swcr_id, CRYPTO_BLAKE2B, 0,0);
 crypto_register(swcr_id, CRYPTO_BLAKE2S, 0,0);
 crypto_register(swcr_id, CRYPTO_CHACHA20, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_CCM_16, 0,0);
 crypto_register(swcr_id, CRYPTO_AES_CCM_CBC_MAC, 0,0);
 crypto_register(swcr_id, CRYPTO_POLY1305, 0,0);


 return 0;
}

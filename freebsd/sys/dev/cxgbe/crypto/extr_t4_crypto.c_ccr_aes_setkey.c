
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int key_len; int key_ctx_hdr; int deckey; int enckey; } ;
struct TYPE_3__ {unsigned int mk_size; int partial_digest_len; } ;
struct ccr_session {int mode; TYPE_2__ blkcipher; TYPE_1__ hmac; } ;
struct _key_ctx {int dummy; } ;




 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_128 ;
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_192 ;
 unsigned int CHCR_KEYCTX_CIPHER_KEY_SIZE_256 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_128 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_192 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_256 ;
 unsigned int CHCR_KEYCTX_NO_KEY ;



 unsigned int GMAC_BLOCK_LEN ;
 int V_KEY_CONTEXT_CK_SIZE (unsigned int) ;
 int V_KEY_CONTEXT_CTX_LEN (unsigned int) ;
 int V_KEY_CONTEXT_DUAL_CK (int) ;
 int V_KEY_CONTEXT_MK_SIZE (unsigned int) ;
 int V_KEY_CONTEXT_OPAD_PRESENT (unsigned int) ;
 int V_KEY_CONTEXT_SALT_PRESENT (int) ;
 int V_KEY_CONTEXT_VALID (int) ;
 int htobe32 (int) ;
 int memcpy (int ,void const*,int) ;
 int panic (char*) ;
 unsigned int roundup2 (int,int) ;
 int t4_aes_getdeckey (int ,void const*,unsigned int) ;

__attribute__((used)) static void
ccr_aes_setkey(struct ccr_session *s, int alg, const void *key, int klen)
{
 unsigned int ck_size, iopad_size, kctx_flits, kctx_len, kbits, mk_size;
 unsigned int opad_present;

 if (alg == 129)
  kbits = klen / 2;
 else
  kbits = klen;
 switch (kbits) {
 case 128:
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_128;
  break;
 case 192:
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_192;
  break;
 case 256:
  ck_size = CHCR_KEYCTX_CIPHER_KEY_SIZE_256;
  break;
 default:
  panic("should not get here");
 }

 s->blkcipher.key_len = klen / 8;
 memcpy(s->blkcipher.enckey, key, s->blkcipher.key_len);
 switch (alg) {
 case 130:
 case 129:
  t4_aes_getdeckey(s->blkcipher.deckey, key, kbits);
  break;
 }

 kctx_len = roundup2(s->blkcipher.key_len, 16);
 switch (s->mode) {
 case 132:
  mk_size = s->hmac.mk_size;
  opad_present = 1;
  iopad_size = roundup2(s->hmac.partial_digest_len, 16);
  kctx_len += iopad_size * 2;
  break;
 case 128:
  mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_128;
  opad_present = 0;
  kctx_len += GMAC_BLOCK_LEN;
  break;
 case 131:
  switch (kbits) {
  case 128:
   mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_128;
   break;
  case 192:
   mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_192;
   break;
  case 256:
   mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
   break;
  default:
   panic("should not get here");
  }
  opad_present = 0;
  kctx_len *= 2;
  break;
 default:
  mk_size = CHCR_KEYCTX_NO_KEY;
  opad_present = 0;
  break;
 }
 kctx_flits = (sizeof(struct _key_ctx) + kctx_len) / 16;
 s->blkcipher.key_ctx_hdr = htobe32(V_KEY_CONTEXT_CTX_LEN(kctx_flits) |
     V_KEY_CONTEXT_DUAL_CK(alg == 129) |
     V_KEY_CONTEXT_OPAD_PRESENT(opad_present) |
     V_KEY_CONTEXT_SALT_PRESENT(1) | V_KEY_CONTEXT_CK_SIZE(ck_size) |
     V_KEY_CONTEXT_MK_SIZE(mk_size) | V_KEY_CONTEXT_VALID(1));
}

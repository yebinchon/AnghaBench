
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int64_t ;
struct ieee80211_qosframe_addr4 {int* i_qos; } ;
struct ieee80211_qosframe {int* i_qos; } ;
struct ieee80211_frame_addr4 {int i_addr4; } ;
struct ieee80211_frame {int* i_fc; int* i_seq; int i_addr1; int i_addr2; } ;
typedef int rijndael_ctx ;


 size_t AES_BLOCK_LEN ;
 int IEEE80211_ADDR_COPY (int*,int ) ;
 int IEEE80211_ADDR_LEN ;
 scalar_t__ IEEE80211_IS_DSTODS (struct ieee80211_frame*) ;
 int IEEE80211_SEQ_FRAG_MASK ;
 scalar_t__ IS_QOS_DATA (struct ieee80211_frame*) ;
 int memcpy (int*,int ,int) ;
 int rijndael_encrypt (int *,int*,int*) ;
 int xor_block (int*,int*,size_t) ;

__attribute__((used)) static void
ccmp_init_blocks(rijndael_ctx *ctx, struct ieee80211_frame *wh,
 u_int64_t pn, size_t dlen,
 uint8_t b0[AES_BLOCK_LEN], uint8_t aad[2 * AES_BLOCK_LEN],
 uint8_t auth[AES_BLOCK_LEN], uint8_t s0[AES_BLOCK_LEN])
{







 b0[0] = 0x59;

 IEEE80211_ADDR_COPY(b0 + 2, wh->i_addr2);
 b0[8] = pn >> 40;
 b0[9] = pn >> 32;
 b0[10] = pn >> 24;
 b0[11] = pn >> 16;
 b0[12] = pn >> 8;
 b0[13] = pn >> 0;
 b0[14] = (dlen >> 8) & 0xff;
 b0[15] = dlen & 0xff;
 aad[0] = 0;

 aad[2] = wh->i_fc[0] & 0x8f;
 aad[3] = wh->i_fc[1] & 0xc7;

 memcpy(aad + 4, wh->i_addr1, 3 * IEEE80211_ADDR_LEN);
 aad[22] = wh->i_seq[0] & IEEE80211_SEQ_FRAG_MASK;
 aad[23] = 0;
 if (IEEE80211_IS_DSTODS(wh)) {
  IEEE80211_ADDR_COPY(aad + 24,
   ((struct ieee80211_frame_addr4 *)wh)->i_addr4);
  if (IEEE80211_QOS_HAS_SEQ(wh)) {
   struct ieee80211_qosframe_addr4 *qwh4 =
    (struct ieee80211_qosframe_addr4 *) wh;
   aad[30] = qwh4->i_qos[0] & 0x0f;
   aad[31] = 0;
   b0[1] = aad[30];
   aad[1] = 22 + IEEE80211_ADDR_LEN + 2;
  } else {
   *(uint16_t *)&aad[30] = 0;
   b0[1] = 0;
   aad[1] = 22 + IEEE80211_ADDR_LEN;
  }
 } else {
  if (IEEE80211_QOS_HAS_SEQ(wh)) {
   struct ieee80211_qosframe *qwh =
    (struct ieee80211_qosframe*) wh;
   aad[24] = qwh->i_qos[0] & 0x0f;
   aad[25] = 0;
   b0[1] = aad[24];
   aad[1] = 22 + 2;
  } else {
   *(uint16_t *)&aad[24] = 0;
   b0[1] = 0;
   aad[1] = 22;
  }
  *(uint16_t *)&aad[26] = 0;
  *(uint32_t *)&aad[28] = 0;
 }


 rijndael_encrypt(ctx, b0, auth);
 xor_block(auth, aad, AES_BLOCK_LEN);
 rijndael_encrypt(ctx, auth, auth);
 xor_block(auth, &aad[AES_BLOCK_LEN], AES_BLOCK_LEN);
 rijndael_encrypt(ctx, auth, auth);
 b0[0] &= 0x07;
 b0[14] = b0[15] = 0;
 rijndael_encrypt(ctx, b0, s0);

}

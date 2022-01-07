
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_range_decoder {int dummy; } ;
struct lz_len_model {int bm_high; int * bm_mid; int choice2; int * bm_low; int choice1; } ;


 int HIGH_BITS ;
 int LOW_BITS ;
 int LOW_SYMBOLS ;
 int MID_BITS ;
 int MID_SYMBOLS ;
 scalar_t__ lz_rd_decode_bit (struct lz_range_decoder*,int *) ;
 int lz_rd_decode_tree (struct lz_range_decoder*,int ,int ) ;

__attribute__((used)) static unsigned
lz_rd_decode_len(struct lz_range_decoder *rd, struct lz_len_model *lm,
    int pos_state)
{
 if (lz_rd_decode_bit(rd, &lm->choice1) == 0)
  return lz_rd_decode_tree(rd, lm->bm_low[pos_state], LOW_BITS);

 if (lz_rd_decode_bit(rd, &lm->choice2) == 0) {
  return LOW_SYMBOLS +
      lz_rd_decode_tree(rd, lm->bm_mid[pos_state], MID_BITS);
 }

 return LOW_SYMBOLS + MID_SYMBOLS +
           lz_rd_decode_tree(rd, lm->bm_high, HIGH_BITS);
}

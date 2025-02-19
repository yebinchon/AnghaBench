
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_range_decoder {int dummy; } ;


 unsigned int lz_rd_decode_bit (struct lz_range_decoder*,int*) ;

__attribute__((used)) static unsigned
lz_rd_decode_matched(struct lz_range_decoder *rd, int *bm, int match_byte)
{
 unsigned symbol = 1;

 for (int i = 7; i >= 0; i--) {
  const unsigned match_bit = (match_byte >> i) & 1;
  const unsigned bit = lz_rd_decode_bit(rd,
      &bm[symbol + (match_bit << 8) + 0x100]);
  symbol = (symbol << 1) | bit;
  if (match_bit != bit) {
   while (symbol < 0x100) {
    symbol = (symbol << 1) |
        lz_rd_decode_bit(rd, &bm[symbol]);
   }
   break;
  }
 }
 return symbol & 0xFF;
}

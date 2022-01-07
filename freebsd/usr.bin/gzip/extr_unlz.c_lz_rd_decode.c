
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lz_range_decoder {int range; int code; int fp; } ;


 scalar_t__ getc (int ) ;

__attribute__((used)) static unsigned
lz_rd_decode(struct lz_range_decoder *rd, int num_bits)
{
 unsigned symbol = 0;

 for (int i = num_bits; i > 0; i--) {
  rd->range >>= 1;
  symbol <<= 1;
  if (rd->code >= rd->range) {
   rd->code -= rd->range;
   symbol |= 1;
  }
  if (rd->range <= 0x00FFFFFFU) {
   rd->range <<= 8;
   rd->code = (rd->code << 8) | (uint8_t)getc(rd->fp);
  }
 }

 return symbol;
}

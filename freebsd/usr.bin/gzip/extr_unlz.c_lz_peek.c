
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lz_decoder {unsigned int pos; size_t dict_size; int * obuf; scalar_t__ wrapped; } ;
typedef size_t off_t ;



__attribute__((used)) static uint8_t
lz_peek(const struct lz_decoder *lz, unsigned ahead)
{
 off_t diff = lz->pos - ahead - 1;

 if (diff >= 0)
  return lz->obuf[diff];

 if (lz->wrapped)
  return lz->obuf[lz->dict_size + diff];

 return 0;
}

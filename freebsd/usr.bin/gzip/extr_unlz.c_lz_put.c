
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lz_decoder {scalar_t__ pos; scalar_t__ dict_size; int * obuf; } ;


 int lz_flush (struct lz_decoder*) ;

__attribute__((used)) static void
lz_put(struct lz_decoder *lz, uint8_t b)
{
 lz->obuf[lz->pos++] = b;
 if (lz->dict_size == lz->pos)
  lz_flush(lz);
}

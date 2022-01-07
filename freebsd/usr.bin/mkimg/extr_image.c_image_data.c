
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {scalar_t__ ch_type; scalar_t__ ch_block; int ch_size; } ;
typedef scalar_t__ lba_t ;


 scalar_t__ CH_TYPE_ZEROES ;
 struct chunk* image_chunk_find (scalar_t__) ;
 int secsz ;

int
image_data(lba_t blk, lba_t size)
{
 struct chunk *ch;
 lba_t lim;

 while (1) {
  ch = image_chunk_find(blk);
  if (ch == ((void*)0))
   return (0);
  if (ch->ch_type != CH_TYPE_ZEROES)
   return (1);
  lim = ch->ch_block + (ch->ch_size / secsz);
  if (lim >= blk + size)
   return (0);
  size -= lim - blk;
  blk = lim;
 }

}

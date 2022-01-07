
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {size_t ch_size; } ;


 void* SIZE_MAX ;
 int assert (int) ;

__attribute__((used)) static size_t
image_chunk_grow(struct chunk *ch, size_t sz)
{
 size_t dsz, newsz;

 newsz = ch->ch_size + sz;
 if (newsz > ch->ch_size) {
  ch->ch_size = newsz;
  return (0);
 }

 dsz = SIZE_MAX - ch->ch_size;
 assert(dsz < sz);
 ch->ch_size = SIZE_MAX;
 return (sz - dsz);
}

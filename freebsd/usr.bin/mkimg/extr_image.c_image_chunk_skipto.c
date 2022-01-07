
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct chunk {long long ch_block; long long ch_size; scalar_t__ ch_type; } ;
typedef long long lba_t ;


 scalar_t__ CH_TYPE_ZEROES ;
 int EFBIG ;
 int ENOMEM ;
 long long SIZE_MAX ;
 int TAILQ_INSERT_TAIL (int *,struct chunk*,int ) ;
 struct chunk* TAILQ_LAST (int *,int ) ;
 int assert (int) ;
 int ch_list ;
 int chunk_head ;
 size_t image_chunk_grow (struct chunk*,size_t) ;
 int image_chunks ;
 int image_nchunks ;
 struct chunk* malloc (int) ;
 int memset (struct chunk*,int ,int) ;
 long long secsz ;

__attribute__((used)) static int
image_chunk_skipto(lba_t to)
{
 struct chunk *ch;
 lba_t from;
 size_t sz;

 ch = TAILQ_LAST(&image_chunks, chunk_head);
 from = (ch != ((void*)0)) ? ch->ch_block + (ch->ch_size / secsz) : 0LL;

 assert(from <= to);


 if (from == to)
  return (0);

 if ((uintmax_t)(to - from) > (uintmax_t)(SIZE_MAX / secsz))
  return (EFBIG);
 sz = (to - from) * secsz;
 if (ch != ((void*)0) && ch->ch_type == CH_TYPE_ZEROES) {
  sz = image_chunk_grow(ch, sz);
  if (sz == 0)
   return (0);
  from = ch->ch_block + (ch->ch_size / secsz);
 }
 ch = malloc(sizeof(*ch));
 if (ch == ((void*)0))
  return (ENOMEM);
 memset(ch, 0, sizeof(*ch));
 ch->ch_block = from;
 ch->ch_size = sz;
 ch->ch_type = CH_TYPE_ZEROES;
 TAILQ_INSERT_TAIL(&image_chunks, ch, ch_list);
 image_nchunks++;
 return (0);
}

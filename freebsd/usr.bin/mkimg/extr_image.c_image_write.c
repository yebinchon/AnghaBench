
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct chunk {scalar_t__ ch_type; TYPE_2__ ch_u; } ;
typedef scalar_t__ ssize_t ;
typedef int lba_t ;


 scalar_t__ CH_TYPE_FILE ;
 scalar_t__ CH_TYPE_MEMORY ;
 scalar_t__ CH_TYPE_ZEROES ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int assert (int) ;
 struct chunk* image_chunk_find (int ) ;
 struct chunk* image_chunk_memory (struct chunk*,int ) ;
 int is_empty_sector (void*) ;
 int memcpy (int ,void*,int) ;
 int secsz ;

int
image_write(lba_t blk, void *buf, ssize_t len)
{
 struct chunk *ch;

 while (len > 0) {
  if (!is_empty_sector(buf)) {
   ch = image_chunk_find(blk);
   if (ch == ((void*)0))
    return (ENXIO);

   if (ch->ch_type == CH_TYPE_FILE)
    return (EINVAL);
   if (ch->ch_type == CH_TYPE_ZEROES) {
    ch = image_chunk_memory(ch, blk);
    if (ch == ((void*)0))
     return (ENOMEM);
   }
   assert(ch->ch_type == CH_TYPE_MEMORY);
   memcpy(ch->ch_u.mem.ptr, buf, secsz);
  }
  blk++;
  buf = (char *)buf + secsz;
  len--;
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ptr; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;
struct chunk {scalar_t__ ch_block; scalar_t__ ch_size; TYPE_2__ ch_u; int ch_type; } ;
typedef scalar_t__ lba_t ;


 int CH_TYPE_MEMORY ;
 int TAILQ_INSERT_AFTER (int *,struct chunk*,struct chunk*,int ) ;
 void* calloc (int,scalar_t__) ;
 int ch_list ;
 int free (void*) ;
 int image_chunks ;
 int image_nchunks ;
 struct chunk* malloc (int) ;
 int memcpy (struct chunk*,struct chunk*,int) ;
 scalar_t__ secsz ;

__attribute__((used)) static struct chunk *
image_chunk_memory(struct chunk *ch, lba_t blk)
{
 struct chunk *new;
 void *ptr;

 ptr = calloc(1, secsz);
 if (ptr == ((void*)0))
  return (((void*)0));

 if (ch->ch_block < blk) {
  new = malloc(sizeof(*new));
  if (new == ((void*)0)) {
   free(ptr);
   return (((void*)0));
  }
  memcpy(new, ch, sizeof(*new));
  ch->ch_size = (blk - ch->ch_block) * secsz;
  new->ch_block = blk;
  new->ch_size -= ch->ch_size;
  TAILQ_INSERT_AFTER(&image_chunks, ch, new, ch_list);
  image_nchunks++;
  ch = new;
 }

 if (ch->ch_size > secsz) {
  new = malloc(sizeof(*new));
  if (new == ((void*)0)) {
   free(ptr);
   return (((void*)0));
  }
  memcpy(new, ch, sizeof(*new));
  ch->ch_size = secsz;
  new->ch_block++;
  new->ch_size -= secsz;
  TAILQ_INSERT_AFTER(&image_chunks, ch, new, ch_list);
  image_nchunks++;
 }

 ch->ch_type = CH_TYPE_MEMORY;
 ch->ch_u.mem.ptr = ptr;
 return (ch);
}

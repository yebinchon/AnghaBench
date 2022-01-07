
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {scalar_t__ ch_block; int ch_size; } ;
typedef scalar_t__ lba_t ;


 struct chunk* TAILQ_FIRST (int *) ;
 struct chunk* TAILQ_NEXT (struct chunk*,int ) ;
 int ch_list ;
 int image_chunks ;
 int secsz ;

__attribute__((used)) static struct chunk *
image_chunk_find(lba_t blk)
{
 static struct chunk *last = ((void*)0);
 struct chunk *ch;

 ch = (last != ((void*)0) && last->ch_block <= blk)
     ? last : TAILQ_FIRST(&image_chunks);
 while (ch != ((void*)0)) {
  if (ch->ch_block <= blk &&
      (lba_t)(ch->ch_block + (ch->ch_size / secsz)) > blk) {
   last = ch;
   break;
  }
  ch = TAILQ_NEXT(ch, ch_list);
 }
 return (ch);
}

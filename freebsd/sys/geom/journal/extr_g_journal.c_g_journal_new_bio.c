
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bio {void* bio_length; int * bio_data; int bio_done; int bio_cmd; void* bio_joffset; void* bio_offset; } ;
typedef void* off_t ;


 int BIO_WRITE ;
 int bcopy (int *,int *,void*) ;
 struct bio* g_alloc_bio () ;
 int g_journal_std_done ;
 int * gj_malloc (void*,int) ;

__attribute__((used)) static struct bio *
g_journal_new_bio(off_t start, off_t end, off_t joffset, u_char *data,
    int flags)
{
 struct bio *bp;

 bp = g_alloc_bio();
 bp->bio_offset = start;
 bp->bio_joffset = joffset;
 bp->bio_length = end - start;
 bp->bio_cmd = BIO_WRITE;
 bp->bio_done = g_journal_std_done;
 if (data == ((void*)0))
  bp->bio_data = ((void*)0);
 else {
  bp->bio_data = gj_malloc(bp->bio_length, flags);
  if (bp->bio_data != ((void*)0))
   bcopy(data, bp->bio_data, bp->bio_length);
 }
 return (bp);
}

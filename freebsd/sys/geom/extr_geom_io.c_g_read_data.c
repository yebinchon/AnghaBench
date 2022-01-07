
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
struct bio {void* bio_data; scalar_t__ bio_length; scalar_t__ bio_offset; int * bio_done; int bio_cmd; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;
struct TYPE_2__ {scalar_t__ sectorsize; } ;


 int BIO_READ ;
 int KASSERT (int,char*) ;
 scalar_t__ MAXPHYS ;
 int M_WAITOK ;
 int biowait (struct bio*,char*) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 int g_free (void*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 void* g_malloc (scalar_t__,int ) ;

void *
g_read_data(struct g_consumer *cp, off_t offset, off_t length, int *error)
{
 struct bio *bp;
 void *ptr;
 int errorc;

 KASSERT(length > 0 && length >= cp->provider->sectorsize &&
     length <= MAXPHYS, ("g_read_data(): invalid length %jd",
     (intmax_t)length));

 bp = g_alloc_bio();
 bp->bio_cmd = BIO_READ;
 bp->bio_done = ((void*)0);
 bp->bio_offset = offset;
 bp->bio_length = length;
 ptr = g_malloc(length, M_WAITOK);
 bp->bio_data = ptr;
 g_io_request(bp, cp);
 errorc = biowait(bp, "gread");
 if (error != ((void*)0))
  *error = errorc;
 g_destroy_bio(bp);
 if (errorc) {
  g_free(ptr);
  ptr = ((void*)0);
 }
 return (ptr);
}

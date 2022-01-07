
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
struct bio {int * bio_data; scalar_t__ bio_length; scalar_t__ bio_offset; int * bio_done; int bio_cmd; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;
struct TYPE_2__ {scalar_t__ sectorsize; } ;


 int BIO_DELETE ;
 int KASSERT (int,char*) ;
 int biowait (struct bio*,char*) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;

int
g_delete_data(struct g_consumer *cp, off_t offset, off_t length)
{
 struct bio *bp;
 int error;

 KASSERT(length > 0 && length >= cp->provider->sectorsize,
     ("g_delete_data(): invalid length %jd", (intmax_t)length));

 bp = g_alloc_bio();
 bp->bio_cmd = BIO_DELETE;
 bp->bio_done = ((void*)0);
 bp->bio_offset = offset;
 bp->bio_length = length;
 bp->bio_data = ((void*)0);
 g_io_request(bp, cp);
 error = biowait(bp, "gdelete");
 g_destroy_bio(bp);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
struct bio {void* bio_data; int bio_length; int bio_offset; int * bio_done; int bio_cmd; } ;
typedef int off_t ;
struct TYPE_2__ {int sectorsize; } ;


 int BIO_READ ;
 int biowait (struct bio*,char*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_reset_bio (struct bio*) ;

__attribute__((used)) static int
g_journal_sync_read(struct g_consumer *cp, struct bio *bp, off_t offset,
    void *data)
{
 int error;

 g_reset_bio(bp);
 bp->bio_cmd = BIO_READ;
 bp->bio_done = ((void*)0);
 bp->bio_offset = offset;
 bp->bio_length = cp->provider->sectorsize;
 bp->bio_data = data;
 g_io_request(bp, cp);
 error = biowait(bp, "gjs_read");
 return (error);
}

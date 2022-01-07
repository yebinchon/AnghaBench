
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
struct bio {int * bio_data; scalar_t__ bio_length; int bio_offset; int * bio_attribute; int * bio_done; int bio_flags; int bio_cmd; } ;
struct TYPE_2__ {int mediasize; int name; } ;


 int BIO_FLUSH ;
 int BIO_ORDERED ;
 int G_T_BIO ;
 int biowait (struct bio*,char*) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_trace (int ,char*,int ) ;

int
g_io_flush(struct g_consumer *cp)
{
 struct bio *bp;
 int error;

 g_trace(G_T_BIO, "bio_flush(%s)", cp->provider->name);
 bp = g_alloc_bio();
 bp->bio_cmd = BIO_FLUSH;
 bp->bio_flags |= BIO_ORDERED;
 bp->bio_done = ((void*)0);
 bp->bio_attribute = ((void*)0);
 bp->bio_offset = cp->provider->mediasize;
 bp->bio_length = 0;
 bp->bio_data = ((void*)0);
 g_io_request(bp, cp);
 error = biowait(bp, "gflush");
 g_destroy_bio(bp);
 return (error);
}

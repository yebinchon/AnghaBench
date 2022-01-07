
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;
struct bio {char const* bio_attribute; int bio_length; int bio_completed; void* bio_data; int * bio_done; int bio_cmd; } ;


 int BIO_GETATTR ;
 int G_T_BIO ;
 int biowait (struct bio*,char*) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_trace (int ,char*,char const*) ;

int
g_io_getattr(const char *attr, struct g_consumer *cp, int *len, void *ptr)
{
 struct bio *bp;
 int error;

 g_trace(G_T_BIO, "bio_getattr(%s)", attr);
 bp = g_alloc_bio();
 bp->bio_cmd = BIO_GETATTR;
 bp->bio_done = ((void*)0);
 bp->bio_attribute = attr;
 bp->bio_length = *len;
 bp->bio_data = ptr;
 g_io_request(bp, cp);
 error = biowait(bp, "ggetattr");
 *len = bp->bio_completed;
 g_destroy_bio(bp);
 return (error);
}

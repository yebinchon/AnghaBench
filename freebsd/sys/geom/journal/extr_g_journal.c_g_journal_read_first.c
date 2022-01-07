
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {int sc_jconsumer; } ;
struct bio {int bio_done; int bio_cmd; int bio_length; int bio_data; int bio_joffset; int bio_offset; struct bio* bio_parent; int bio_cflags; } ;


 int BIO_READ ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int M_WAITOK ;
 struct bio* g_alloc_bio () ;
 int g_io_request (struct bio*,int ) ;
 int g_journal_cache_misses ;
 int g_journal_std_done ;
 int gj_malloc (int ,int ) ;

__attribute__((used)) static void
g_journal_read_first(struct g_journal_softc *sc, struct bio *bp)
{
 struct bio *cbp;





 cbp = g_alloc_bio();
 cbp->bio_cflags = bp->bio_cflags;
 cbp->bio_parent = bp;
 cbp->bio_offset = bp->bio_joffset;
 cbp->bio_length = bp->bio_length;
 cbp->bio_data = gj_malloc(bp->bio_length, M_WAITOK);
 cbp->bio_cmd = BIO_READ;
 cbp->bio_done = g_journal_std_done;
 GJ_LOGREQ(4, cbp, "READ FIRST");
 g_io_request(cbp, sc->sc_jconsumer);
 g_journal_cache_misses++;
}

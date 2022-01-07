
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_softc {int consumer; } ;
struct g_bde_sector {int state; int size; int data; int offset; struct g_bde_softc* softc; } ;
struct bio {struct g_bde_softc* bio_caller2; struct g_bde_sector* bio_caller1; int bio_done; int bio_length; int bio_data; int bio_offset; int bio_cmd; } ;


 int BIO_READ ;
 int ENOMEM ;
 int G_T_TOPOLOGY ;
 int IO ;
 int KASSERT (int ,char*) ;
 int g_bde_read_done ;
 int g_io_request (struct bio*,int ) ;
 struct bio* g_new_bio () ;
 int g_trace (int ,char*,struct g_bde_sector*) ;

__attribute__((used)) static int
g_bde_start_read(struct g_bde_sector *sp)
{
 struct bio *bp;
 struct g_bde_softc *sc;

 g_trace(G_T_TOPOLOGY, "g_bde_start_read(%p)", sp);
 sc = sp->softc;
 KASSERT(sc != ((void*)0), ("Null softc in sp %p", sp));
 bp = g_new_bio();
 if (bp == ((void*)0))
  return (ENOMEM);
 bp->bio_cmd = BIO_READ;
 bp->bio_offset = sp->offset;
 bp->bio_data = sp->data;
 bp->bio_length = sp->size;
 bp->bio_done = g_bde_read_done;
 bp->bio_caller1 = sp;
 bp->bio_caller2 = sc;
 sp->state = IO;
 g_io_request(bp, sc->consumer);
 return(0);
}

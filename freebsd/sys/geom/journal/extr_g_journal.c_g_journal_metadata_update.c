
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int jj_offset; } ;
struct g_journal_softc {int sc_flags; int sc_name; int sc_journal_previous_id; TYPE_1__ sc_inactive; int sc_jend; int sc_jstart; int sc_orig_type; int sc_id; struct g_consumer* sc_dconsumer; } ;
struct g_journal_metadata {scalar_t__ md_provsize; int md_provider; int md_flags; int md_jid; int md_joffset; int md_jend; int md_jstart; int md_type; int md_id; int md_version; int md_magic; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct bio {int (* bio_done ) (struct bio*) ;int bio_cmd; int * bio_data; scalar_t__ bio_length; scalar_t__ bio_offset; } ;
struct TYPE_4__ {scalar_t__ sectorsize; scalar_t__ mediasize; } ;


 int BIO_WRITE ;
 int GJF_DEVICE_CLEAN ;
 int GJF_DEVICE_DESTROY ;
 int GJF_DEVICE_HARDCODED ;
 int GJ_FLAG_CLEAN ;
 int G_JOURNAL_MAGIC ;
 int G_JOURNAL_VERSION ;
 int M_WAITOK ;
 int biowait (struct bio*,char*) ;
 int bzero (int ,int) ;
 struct bio* g_alloc_bio () ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_journal_flush_cache (struct g_journal_softc*) ;
 int g_journal_metadata_done (struct bio*) ;
 int * gj_malloc (scalar_t__,int ) ;
 int journal_metadata_encode (struct g_journal_metadata*,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
g_journal_metadata_update(struct g_journal_softc *sc)
{
 struct g_journal_metadata md;
 struct g_consumer *cp;
 struct bio *bp;
 u_char *sector;

 cp = sc->sc_dconsumer;
 sector = gj_malloc(cp->provider->sectorsize, M_WAITOK);
 strlcpy(md.md_magic, G_JOURNAL_MAGIC, sizeof(md.md_magic));
 md.md_version = G_JOURNAL_VERSION;
 md.md_id = sc->sc_id;
 md.md_type = sc->sc_orig_type;
 md.md_jstart = sc->sc_jstart;
 md.md_jend = sc->sc_jend;
 md.md_joffset = sc->sc_inactive.jj_offset;
 md.md_jid = sc->sc_journal_previous_id;
 md.md_flags = 0;
 if (sc->sc_flags & GJF_DEVICE_CLEAN)
  md.md_flags |= GJ_FLAG_CLEAN;

 if (sc->sc_flags & GJF_DEVICE_HARDCODED)
  strlcpy(md.md_provider, sc->sc_name, sizeof(md.md_provider));
 else
  bzero(md.md_provider, sizeof(md.md_provider));
 md.md_provsize = cp->provider->mediasize;
 journal_metadata_encode(&md, sector);







 g_journal_flush_cache(sc);

 bp = g_alloc_bio();
 bp->bio_offset = cp->provider->mediasize - cp->provider->sectorsize;
 bp->bio_length = cp->provider->sectorsize;
 bp->bio_data = sector;
 bp->bio_cmd = BIO_WRITE;
 if (!(sc->sc_flags & GJF_DEVICE_DESTROY)) {
  bp->bio_done = g_journal_metadata_done;
  g_io_request(bp, cp);
 } else {
  bp->bio_done = ((void*)0);
  g_io_request(bp, cp);
  biowait(bp, "gjmdu");
  g_journal_metadata_done(bp);
 }




 g_journal_flush_cache(sc);
}

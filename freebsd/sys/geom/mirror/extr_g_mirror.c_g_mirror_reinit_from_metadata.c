
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_flags; int sc_ndisks; int sc_mediasize; int sc_balance; int sc_slice; int sc_syncid; int sc_genid; } ;
struct g_mirror_metadata {int md_mflags; int md_all; int md_mediasize; int md_balance; int md_slice; int md_syncid; int md_genid; } ;


 int G_MIRROR_DEVICE_FLAG_MASK ;

__attribute__((used)) static void
g_mirror_reinit_from_metadata(struct g_mirror_softc *sc,
    const struct g_mirror_metadata *md)
{

 sc->sc_genid = md->md_genid;
 sc->sc_syncid = md->md_syncid;

 sc->sc_slice = md->md_slice;
 sc->sc_balance = md->md_balance;
 sc->sc_mediasize = md->md_mediasize;
 sc->sc_ndisks = md->md_all;
 sc->sc_flags &= ~G_MIRROR_DEVICE_FLAG_MASK;
 sc->sc_flags |= (md->md_mflags & G_MIRROR_DEVICE_FLAG_MASK);
}

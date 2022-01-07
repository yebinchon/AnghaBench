
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_shsec_softc {size_t sc_ndisks; scalar_t__ sc_id; int sc_name; struct g_consumer** sc_disks; struct g_geom* sc_geom; } ;
struct g_shsec_metadata {scalar_t__ md_id; int md_name; int md_magic; } ;
struct g_provider {int name; } ;
struct g_geom {int consumer; } ;
struct g_consumer {size_t index; int ace; int acw; int acr; struct g_shsec_softc* private; } ;


 int EEXIST ;
 int EINVAL ;
 int G_SHSEC_DEBUG (int ,char*,int ,...) ;
 int G_SHSEC_MAGIC ;
 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int ,int ,int ) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 int g_shsec_check_and_run (struct g_shsec_softc*) ;
 int g_shsec_read_metadata (struct g_consumer*,struct g_shsec_metadata*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
g_shsec_add_disk(struct g_shsec_softc *sc, struct g_provider *pp, u_int no)
{
 struct g_consumer *cp, *fcp;
 struct g_geom *gp;
 struct g_shsec_metadata md;
 int error;


 if (no >= sc->sc_ndisks)
  return (EINVAL);


 if (sc->sc_disks[no] != ((void*)0))
  return (EEXIST);

 gp = sc->sc_geom;
 fcp = LIST_FIRST(&gp->consumer);

 cp = g_new_consumer(gp);
 error = g_attach(cp, pp);
 if (error != 0) {
  g_destroy_consumer(cp);
  return (error);
 }

 if (fcp != ((void*)0) && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0)) {
  error = g_access(cp, fcp->acr, fcp->acw, fcp->ace);
  if (error != 0) {
   g_detach(cp);
   g_destroy_consumer(cp);
   return (error);
  }
 }


 error = g_shsec_read_metadata(cp, &md);
 if (error != 0)
  goto fail;

 if (strcmp(md.md_magic, G_SHSEC_MAGIC) != 0 ||
     strcmp(md.md_name, sc->sc_name) != 0 || md.md_id != sc->sc_id) {
  G_SHSEC_DEBUG(0, "Metadata on %s changed.", pp->name);
  goto fail;
 }

 cp->private = sc;
 cp->index = no;
 sc->sc_disks[no] = cp;

 G_SHSEC_DEBUG(0, "Disk %s attached to %s.", pp->name, sc->sc_name);

 g_shsec_check_and_run(sc);

 return (0);
fail:
 if (fcp != ((void*)0) && (fcp->acr > 0 || fcp->acw > 0 || fcp->ace > 0))
  g_access(cp, -fcp->acr, -fcp->acw, -fcp->ace);
 g_detach(cp);
 g_destroy_consumer(cp);
 return (error);
}

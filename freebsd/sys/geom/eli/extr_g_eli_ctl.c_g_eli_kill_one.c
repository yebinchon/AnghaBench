
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct g_provider {int name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_eli_softc {int sc_flags; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct TYPE_2__ {int consumer; int provider; } ;


 int ENOENT ;
 int ENXIO ;
 int G_ELI_DEBUG (int ,char*,int ,...) ;
 int G_ELI_FLAG_RO ;
 void* LIST_FIRST (int *) ;
 int M_ELI ;
 int M_WAITOK ;
 int TRUE ;
 int arc4rand (int *,scalar_t__,int ) ;
 int bzero (int *,scalar_t__) ;
 int free (int *,int ) ;
 int g_eli_destroy (struct g_eli_softc*,int ) ;
 scalar_t__ g_eli_overwrites ;
 int g_error_provider (struct g_provider*,int ) ;
 int g_io_flush (struct g_consumer*) ;
 int g_topology_assert () ;
 int g_write_data (struct g_consumer*,scalar_t__,int *,scalar_t__) ;
 int * malloc (scalar_t__,int ,int ) ;

__attribute__((used)) static int
g_eli_kill_one(struct g_eli_softc *sc)
{
 struct g_provider *pp;
 struct g_consumer *cp;
 int error = 0;

 g_topology_assert();

 if (sc == ((void*)0))
  return (ENOENT);

 pp = LIST_FIRST(&sc->sc_geom->provider);
 g_error_provider(pp, ENXIO);

 cp = LIST_FIRST(&sc->sc_geom->consumer);
 pp = cp->provider;

 if (sc->sc_flags & G_ELI_FLAG_RO) {
  G_ELI_DEBUG(0, "WARNING: Metadata won't be erased on read-only "
      "provider: %s.", pp->name);
 } else {
  u_char *sector;
  u_int i;
  int err;

  sector = malloc(pp->sectorsize, M_ELI, M_WAITOK);
  for (i = 0; i <= g_eli_overwrites; i++) {
   if (i == g_eli_overwrites)
    bzero(sector, pp->sectorsize);
   else
    arc4rand(sector, pp->sectorsize, 0);
   err = g_write_data(cp, pp->mediasize - pp->sectorsize,
       sector, pp->sectorsize);
   if (err != 0) {
    G_ELI_DEBUG(0, "Cannot erase metadata on %s "
        "(error=%d).", pp->name, err);
    if (error == 0)
     error = err;
   }




   (void)g_io_flush(cp);
  }
  free(sector, M_ELI);
 }
 if (error == 0)
  G_ELI_DEBUG(0, "%s has been killed.", pp->name);
 g_eli_destroy(sc, TRUE);
 return (error);
}

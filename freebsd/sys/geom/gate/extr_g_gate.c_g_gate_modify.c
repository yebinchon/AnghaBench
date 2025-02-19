
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {int sectorsize; scalar_t__ mediasize; int name; int geom; } ;
struct g_gate_softc {scalar_t__ sc_readoffset; struct g_consumer* sc_readcons; struct g_provider* sc_provider; int sc_info; } ;
struct g_gate_ctl_modify {int gctl_modify; int gctl_mediasize; char* gctl_readprov; int gctl_readoffset; int gctl_info; } ;
struct g_consumer {int flags; TYPE_1__* provider; } ;
struct TYPE_2__ {scalar_t__ mediasize; } ;


 int EINVAL ;
 int GG_MODIFY_INFO ;
 int GG_MODIFY_MEDIASIZE ;
 int GG_MODIFY_READOFFSET ;
 int GG_MODIFY_READPROV ;
 int G_CF_DIRECT_RECEIVE ;
 int G_CF_DIRECT_SEND ;
 int G_GATE_DEBUG (int,char*,...) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 struct g_consumer* g_new_consumer (int ) ;
 struct g_provider* g_provider_by_name (char*) ;
 int g_resize_provider (struct g_provider*,int) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
g_gate_modify(struct g_gate_softc *sc, struct g_gate_ctl_modify *ggio)
{
 struct g_provider *pp;
 struct g_consumer *cp;
 int error;

 if ((ggio->gctl_modify & GG_MODIFY_MEDIASIZE) != 0) {
  if (ggio->gctl_mediasize <= 0) {
   G_GATE_DEBUG(1, "Invalid media size.");
   return (EINVAL);
  }
  pp = sc->sc_provider;
  if ((ggio->gctl_mediasize % pp->sectorsize) != 0) {
   G_GATE_DEBUG(1, "Invalid media size.");
   return (EINVAL);
  }
  g_resize_provider(pp, ggio->gctl_mediasize);
  return (0);
 }

 if ((ggio->gctl_modify & GG_MODIFY_INFO) != 0)
  (void)strlcpy(sc->sc_info, ggio->gctl_info, sizeof(sc->sc_info));

 cp = ((void*)0);

 if ((ggio->gctl_modify & GG_MODIFY_READPROV) != 0) {
  g_topology_lock();
  if (sc->sc_readcons != ((void*)0)) {
   cp = sc->sc_readcons;
   sc->sc_readcons = ((void*)0);
   (void)g_access(cp, -1, 0, 0);
   g_detach(cp);
   g_destroy_consumer(cp);
  }
  if (ggio->gctl_readprov[0] != '\0') {
   pp = g_provider_by_name(ggio->gctl_readprov);
   if (pp == ((void*)0)) {
    g_topology_unlock();
    G_GATE_DEBUG(1, "Provider %s doesn't exist.",
        ggio->gctl_readprov);
    return (EINVAL);
   }
   cp = g_new_consumer(sc->sc_provider->geom);
   cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
   error = g_attach(cp, pp);
   if (error != 0) {
    G_GATE_DEBUG(1, "Unable to attach to %s.",
        pp->name);
   } else {
    error = g_access(cp, 1, 0, 0);
    if (error != 0) {
     G_GATE_DEBUG(1, "Unable to access %s.",
         pp->name);
     g_detach(cp);
    }
   }
   if (error != 0) {
    g_destroy_consumer(cp);
    g_topology_unlock();
    return (error);
   }
  }
 } else {
  cp = sc->sc_readcons;
 }

 if ((ggio->gctl_modify & GG_MODIFY_READOFFSET) != 0) {
  if (cp == ((void*)0)) {
   G_GATE_DEBUG(1, "No read provider.");
   return (EINVAL);
  }
  pp = sc->sc_provider;
  if ((ggio->gctl_readoffset % pp->sectorsize) != 0) {
   G_GATE_DEBUG(1, "Invalid read offset.");
   return (EINVAL);
  }
  if (pp->mediasize + ggio->gctl_readoffset >
      cp->provider->mediasize) {
   G_GATE_DEBUG(1, "Invalid read offset or media size.");
   return (EINVAL);
  }
  sc->sc_readoffset = ggio->gctl_readoffset;
 }

 if ((ggio->gctl_modify & GG_MODIFY_READPROV) != 0) {
  sc->sc_readcons = cp;
  g_topology_unlock();
 }

 return (0);
}

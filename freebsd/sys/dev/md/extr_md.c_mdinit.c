
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {int type; int sectorsize; int unit; int devstat; struct g_provider* pp; struct g_geom* gp; int mediasize; } ;
struct g_provider {int flags; int sectorsize; int mediasize; } ;
struct g_geom {struct md_s* softc; } ;


 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_MAX ;
 int DEVSTAT_TYPE_DIRECT ;
 int G_PF_ACCEPT_UNMAPPED ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;





 int devstat_new_entry (char*,int ,int ,int ,int ,int ) ;
 int g_error_provider (struct g_provider*,int ) ;
 int g_md_class ;
 struct g_geom* g_new_geomf (int *,char*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;

__attribute__((used)) static void
mdinit(struct md_s *sc)
{
 struct g_geom *gp;
 struct g_provider *pp;

 g_topology_lock();
 gp = g_new_geomf(&g_md_class, "md%d", sc->unit);
 gp->softc = sc;
 pp = g_new_providerf(gp, "md%d", sc->unit);
 pp->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE;
 pp->mediasize = sc->mediasize;
 pp->sectorsize = sc->sectorsize;
 switch (sc->type) {
 case 132:
 case 128:
 case 129:
  pp->flags |= G_PF_ACCEPT_UNMAPPED;
  break;
 case 130:
 case 131:
  break;
 }
 sc->gp = gp;
 sc->pp = pp;
 g_error_provider(pp, 0);
 g_topology_unlock();
 sc->devstat = devstat_new_entry("md", sc->unit, sc->sectorsize,
     DEVSTAT_ALL_SUPPORTED, DEVSTAT_TYPE_DIRECT, DEVSTAT_PRIORITY_MAX);
}

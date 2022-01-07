
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_softc {int ncache; int freelist; } ;
struct g_bde_sector {scalar_t__ ref; int size; int data; } ;


 int G_T_TOPOLOGY ;
 int TAILQ_REMOVE (int *,struct g_bde_sector*,int ) ;
 int bzero (int ,int ) ;
 int g_bde_delete_sector (struct g_bde_softc*,struct g_bde_sector*) ;
 int g_bde_ncache ;
 int g_trace (int ,char*,struct g_bde_softc*,struct g_bde_sector*) ;
 int list ;

__attribute__((used)) static void
g_bde_purge_one_sector(struct g_bde_softc *sc, struct g_bde_sector *sp)
{

 g_trace(G_T_TOPOLOGY, "g_bde_purge_one_sector(%p, %p)", sc, sp);
 if (sp->ref != 0)
  return;
 TAILQ_REMOVE(&sc->freelist, sp, list);
 g_bde_ncache--;
 sc->ncache--;
 bzero(sp->data, sp->size);
 g_bde_delete_sector(sc, sp);
}

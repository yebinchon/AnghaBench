
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_work {struct g_bde_softc* softc; } ;
struct g_bde_softc {int worklist; int nwork; } ;


 int M_GBDE ;
 int TAILQ_REMOVE (int *,struct g_bde_work*,int ) ;
 int free (struct g_bde_work*,int ) ;
 int g_bde_nwork ;
 int list ;

__attribute__((used)) static void
g_bde_delete_work(struct g_bde_work *wp)
{
 struct g_bde_softc *sc;

 sc = wp->softc;
 g_bde_nwork--;
 sc->nwork--;
 TAILQ_REMOVE(&sc->worklist, wp, list);
 free(wp, M_GBDE);
}

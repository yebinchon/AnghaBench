
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_work {struct g_bde_softc* softc; int state; } ;
struct g_bde_softc {int worklist; int nwork; } ;


 int M_GBDE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SETUP ;
 int TAILQ_INSERT_TAIL (int *,struct g_bde_work*,int ) ;
 int g_bde_nwork ;
 int list ;
 struct g_bde_work* malloc (int,int ,int) ;

__attribute__((used)) static struct g_bde_work *
g_bde_new_work(struct g_bde_softc *sc)
{
 struct g_bde_work *wp;

 wp = malloc(sizeof *wp, M_GBDE, M_NOWAIT | M_ZERO);
 if (wp == ((void*)0))
  return (wp);
 wp->state = SETUP;
 wp->softc = sc;
 g_bde_nwork++;
 sc->nwork++;
 TAILQ_INSERT_TAIL(&sc->worklist, wp, list);
 return (wp);
}

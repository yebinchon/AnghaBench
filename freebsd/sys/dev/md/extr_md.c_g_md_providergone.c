
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_s {int queue_mtx; int flags; } ;
struct g_provider {TYPE_1__* geom; } ;
struct TYPE_2__ {struct md_s* softc; } ;


 int MD_PROVIDERGONE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
g_md_providergone(struct g_provider *pp)
{
 struct md_s *sc = pp->geom->softc;

 mtx_lock(&sc->queue_mtx);
 sc->flags |= MD_PROVIDERGONE;
 wakeup(&sc->flags);
 mtx_unlock(&sc->queue_mtx);
}

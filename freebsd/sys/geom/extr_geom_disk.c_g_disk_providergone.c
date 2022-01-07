
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {TYPE_1__* geom; int * private; } ;
struct g_disk_softc {scalar_t__* led; int start_mtx; int done_mtx; int * sysctl_tree; int sysctl_ctx; struct disk* dp; } ;
struct disk {int (* d_gone ) (struct disk*) ;} ;
struct TYPE_2__ {int * softc; } ;


 int g_free (struct g_disk_softc*) ;
 int led_set (scalar_t__*,char*) ;
 int mtx_destroy (int *) ;
 int stub1 (struct disk*) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
g_disk_providergone(struct g_provider *pp)
{
 struct disk *dp;
 struct g_disk_softc *sc;

 sc = (struct g_disk_softc *)pp->private;
 dp = sc->dp;
 if (dp != ((void*)0) && dp->d_gone != ((void*)0))
  dp->d_gone(dp);
 if (sc->sysctl_tree != ((void*)0)) {
  sysctl_ctx_free(&sc->sysctl_ctx);
  sc->sysctl_tree = ((void*)0);
 }
 if (sc->led[0] != 0) {
  led_set(sc->led, "0");
  sc->led[0] = 0;
 }
 pp->private = ((void*)0);
 pp->geom->softc = ((void*)0);
 mtx_destroy(&sc->done_mtx);
 mtx_destroy(&sc->start_mtx);
 g_free(sc);
}

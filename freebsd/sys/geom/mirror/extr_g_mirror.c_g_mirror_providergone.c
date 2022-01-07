
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_mirror_softc* private; } ;
struct g_mirror_softc {scalar_t__ sc_refcnt; } ;


 int g_mirror_free_device (struct g_mirror_softc*) ;

__attribute__((used)) static void
g_mirror_providergone(struct g_provider *pp)
{
 struct g_mirror_softc *sc = pp->private;

 if ((--sc->sc_refcnt) == 0)
  g_mirror_free_device(sc);
}

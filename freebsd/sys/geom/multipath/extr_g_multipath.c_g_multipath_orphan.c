
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_multipath_softc {int sc_mtx; int sc_ndisks; } ;
struct g_consumer {int index; int private; TYPE_2__* geom; TYPE_1__* provider; } ;
struct TYPE_4__ {char* name; struct g_multipath_softc* softc; } ;
struct TYPE_3__ {char* name; } ;


 int MP_LOST ;
 int MP_POSTED ;
 int g_mpd (struct g_consumer*,int ) ;
 int g_multipath_fault (struct g_consumer*,int ) ;
 int g_topology_assert () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
g_multipath_orphan(struct g_consumer *cp)
{
 struct g_multipath_softc *sc;
 uintptr_t *cnt;

 g_topology_assert();
 printf("GEOM_MULTIPATH: %s in %s was disconnected\n",
     cp->provider->name, cp->geom->name);
 sc = cp->geom->softc;
 cnt = (uintptr_t *)&cp->private;
 mtx_lock(&sc->sc_mtx);
 sc->sc_ndisks--;
 g_multipath_fault(cp, MP_LOST);
 if (*cnt == 0 && (cp->index & MP_POSTED) == 0) {
  cp->index |= MP_POSTED;
  mtx_unlock(&sc->sc_mtx);
  g_mpd(cp, 0);
 } else
  mtx_unlock(&sc->sc_mtx);
}

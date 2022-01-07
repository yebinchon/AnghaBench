
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct g_dev_softc {scalar_t__ sc_open; int sc_active; int sc_mtx; } ;
struct g_consumer {struct g_dev_softc* private; TYPE_1__* geom; } ;
struct cdev {struct g_consumer* si_drv2; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int ENXIO ;
 int FREAD ;
 int FWRITE ;
 int G_T_ACCESS ;
 int O_EXCL ;
 int SC_A_ACTIVE ;
 int SC_A_OPEN ;
 int atomic_clear_int (int*,int ) ;
 int atomic_set_int (int*,int ) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_trace (int ,char*,int ,int,int,struct thread*) ;
 int hz ;
 int msleep (int*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
g_dev_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct g_consumer *cp;
 struct g_dev_softc *sc;
 int error, r, w, e;

 cp = dev->si_drv2;
 if (cp == ((void*)0))
  return (ENXIO);
 g_trace(G_T_ACCESS, "g_dev_close(%s, %d, %d, %p)",
     cp->geom->name, flags, fmt, td);

 r = flags & FREAD ? -1 : 0;
 w = flags & FWRITE ? -1 : 0;



 e = 0;
 if (r + w + e == 0)
  return (EINVAL);

 sc = cp->private;
 mtx_lock(&sc->sc_mtx);
 sc->sc_open += r + w + e;
 if (sc->sc_open == 0)
  atomic_clear_int(&sc->sc_active, SC_A_OPEN);
 else
  atomic_set_int(&sc->sc_active, SC_A_OPEN);
 while (sc->sc_open == 0 && (sc->sc_active & SC_A_ACTIVE) != 0)
  msleep(&sc->sc_active, &sc->sc_mtx, 0, "g_dev_close", hz / 10);
 mtx_unlock(&sc->sc_mtx);
 g_topology_lock();
 error = g_access(cp, r, w, e);
 g_topology_unlock();
 return (error);
}

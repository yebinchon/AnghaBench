
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
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
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int securelevel_ge (int ,int) ;
 int wakeup (int*) ;

__attribute__((used)) static int
g_dev_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct g_consumer *cp;
 struct g_dev_softc *sc;
 int error, r, w, e;

 cp = dev->si_drv2;
 if (cp == ((void*)0))
  return (ENXIO);
 g_trace(G_T_ACCESS, "g_dev_open(%s, %d, %d, %p)",
     cp->geom->name, flags, fmt, td);

 r = flags & FREAD ? 1 : 0;
 w = flags & FWRITE ? 1 : 0;



 e = 0;





 if (r + w + e == 0)
  return (EINVAL);

 if (w) {




  error = securelevel_ge(td->td_ucred, 2);
  if (error)
   return (error);
 }
 g_topology_lock();
 error = g_access(cp, r, w, e);
 g_topology_unlock();
 if (error == 0) {
  sc = cp->private;
  mtx_lock(&sc->sc_mtx);
  if (sc->sc_open == 0 && (sc->sc_active & SC_A_ACTIVE) != 0)
   wakeup(&sc->sc_active);
  sc->sc_open += r + w + e;
  if (sc->sc_open == 0)
   atomic_clear_int(&sc->sc_active, SC_A_OPEN);
  else
   atomic_set_int(&sc->sc_active, SC_A_OPEN);
  mtx_unlock(&sc->sc_mtx);
 }
 return (error);
}

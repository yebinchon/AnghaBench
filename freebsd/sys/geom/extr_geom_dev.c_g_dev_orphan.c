
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_dev_softc {struct cdev* sc_dev; } ;
struct g_consumer {TYPE_1__* geom; struct g_dev_softc* private; } ;
struct diocskerneldump_arg {int kda_index; } ;
struct cdev {int si_flags; } ;
typedef int kda ;
struct TYPE_2__ {int name; } ;


 int G_T_TOPOLOGY ;
 int KDA_REMOVE_DEV ;
 int SI_DUMPDEV ;
 int bzero (struct diocskerneldump_arg*,int) ;
 int delist_dev (struct cdev*) ;
 int destroy_dev_sched_cb (struct cdev*,int ,struct g_consumer*) ;
 int devtoname (struct cdev*) ;
 int dumper_remove (int ,struct diocskerneldump_arg*) ;
 int g_dev_callback ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_consumer*,int ) ;

__attribute__((used)) static void
g_dev_orphan(struct g_consumer *cp)
{
 struct cdev *dev;
 struct g_dev_softc *sc;

 g_topology_assert();
 sc = cp->private;
 dev = sc->sc_dev;
 g_trace(G_T_TOPOLOGY, "g_dev_orphan(%p(%s))", cp, cp->geom->name);


 if (dev->si_flags & SI_DUMPDEV) {
  struct diocskerneldump_arg kda;

  bzero(&kda, sizeof(kda));
  kda.kda_index = KDA_REMOVE_DEV;
  (void)dumper_remove(devtoname(dev), &kda);
 }


 delist_dev(dev);
 destroy_dev_sched_cb(dev, g_dev_callback, cp);
}

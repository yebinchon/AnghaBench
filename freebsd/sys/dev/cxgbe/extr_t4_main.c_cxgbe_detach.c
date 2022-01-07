
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int flags; int media; int tick; int * vi; struct adapter* adapter; } ;
struct adapter {int traceq; } ;
typedef int device_t ;


 int HAS_TRACEQ ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int cxgbe_vi_detach (int *) ;
 int device_delete_children (int ) ;
 struct port_info* device_get_softc (int ) ;
 int doom_vi (struct adapter*,int *) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int ifmedia_removeall (int *) ;
 int t4_tracer_port_detach (struct adapter*) ;

__attribute__((used)) static int
cxgbe_detach(device_t dev)
{
 struct port_info *pi = device_get_softc(dev);
 struct adapter *sc = pi->adapter;
 int rc;


 rc = bus_generic_detach(dev);
 if (rc)
  return (rc);
 device_delete_children(dev);

 doom_vi(sc, &pi->vi[0]);

 if (pi->flags & HAS_TRACEQ) {
  sc->traceq = -1;
  t4_tracer_port_detach(sc);
 }

 cxgbe_vi_detach(&pi->vi[0]);
 callout_drain(&pi->tick);
 ifmedia_removeall(&pi->media);

 end_synchronized_op(sc, 0);

 return (0);
}

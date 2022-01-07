
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct proto_softc {int sc_opencnt; scalar_t__ sc_rescnt; int sc_mtx; struct proto_res* sc_res; } ;
struct TYPE_4__ {int busdma; int res; } ;
struct TYPE_3__ {int cdev; } ;
struct proto_res {int r_type; TYPE_2__ r_d; TYPE_1__ r_u; int r_rid; } ;
typedef int device_t ;


 int EBUSY ;


 int PROTO_RES_UNUSED ;




 int bus_release_resource (int ,int,int ,int ) ;
 int destroy_dev (int ) ;
 struct proto_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int proto_busdma_detach (struct proto_softc*,int ) ;

int
proto_detach(device_t dev)
{
 struct proto_softc *sc;
 struct proto_res *r;
 u_int res;

 sc = device_get_softc(dev);

 mtx_lock(&sc->sc_mtx);
 if (sc->sc_opencnt == 0)
  sc->sc_opencnt = -1;
 mtx_unlock(&sc->sc_mtx);
 if (sc->sc_opencnt > 0)
  return (EBUSY);

 for (res = 0; res < sc->sc_rescnt; res++) {
  r = sc->sc_res + res;

  switch (r->r_type) {
  case 129:

   bus_release_resource(dev, r->r_type, r->r_rid,
       r->r_d.res);
   break;
  case 131:
   bus_release_resource(dev, r->r_type, r->r_rid,
       r->r_d.res);
   break;
  case 128:
  case 130:
   destroy_dev(r->r_u.cdev);
   bus_release_resource(dev, r->r_type, r->r_rid,
       r->r_d.res);
   break;
  case 132:
   destroy_dev(r->r_u.cdev);
   break;
  case 133:
   destroy_dev(r->r_u.cdev);
   proto_busdma_detach(sc, r->r_d.busdma);
   break;
  }
  r->r_type = PROTO_RES_UNUSED;
 }
 mtx_lock(&sc->sc_mtx);
 sc->sc_rescnt = 0;
 sc->sc_opencnt = 0;
 mtx_unlock(&sc->sc_mtx);
 mtx_destroy(&sc->sc_mtx);
 return (0);
}

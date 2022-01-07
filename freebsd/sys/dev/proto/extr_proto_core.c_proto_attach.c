
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct proto_softc {scalar_t__ sc_rescnt; struct proto_res* sc_res; int sc_mtx; int sc_dev; } ;
struct TYPE_6__ {TYPE_2__* cdev; } ;
struct TYPE_4__ {int busdma; int res; } ;
struct proto_res {int r_type; int r_size; TYPE_3__ r_u; TYPE_1__ r_d; int r_rid; } ;
typedef int device_t ;
struct TYPE_5__ {struct proto_res* si_drv2; struct proto_softc* si_drv1; } ;


 int MTX_DEF ;






 int device_get_desc (int ) ;
 struct proto_softc* device_get_softc (int ) ;
 void* make_dev (int *,scalar_t__,int ,int ,int,char*,int ,...) ;
 int mtx_init (int *,char*,int *,int ) ;
 int proto_busdma_attach (struct proto_softc*) ;
 int proto_devsw ;
 int rman_get_size (int ) ;

int
proto_attach(device_t dev)
{
 struct proto_softc *sc;
 struct proto_res *r;
 u_int res;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "proto-softc", ((void*)0), MTX_DEF);

 for (res = 0; res < sc->sc_rescnt; res++) {
  r = sc->sc_res + res;
  switch (r->r_type) {
  case 129:

   break;
  case 131:
   break;
  case 128:
  case 130:
   r->r_size = rman_get_size(r->r_d.res);
   r->r_u.cdev = make_dev(&proto_devsw, res, 0, 0, 0600,
       "proto/%s/%02x.%s", device_get_desc(dev), r->r_rid,
       (r->r_type == 130) ? "io" : "mem");
   r->r_u.cdev->si_drv1 = sc;
   r->r_u.cdev->si_drv2 = r;
   break;
  case 132:
   r->r_size = 4096;
   r->r_u.cdev = make_dev(&proto_devsw, res, 0, 0, 0600,
       "proto/%s/pcicfg", device_get_desc(dev));
   r->r_u.cdev->si_drv1 = sc;
   r->r_u.cdev->si_drv2 = r;
   break;
  case 133:
   r->r_d.busdma = proto_busdma_attach(sc);
   r->r_size = 0;
   r->r_u.cdev = make_dev(&proto_devsw, res, 0, 0, 0600,
       "proto/%s/busdma", device_get_desc(dev));
   r->r_u.cdev->si_drv1 = sc;
   r->r_u.cdev->si_drv2 = r;
   break;
  }
 }
 return (0);
}

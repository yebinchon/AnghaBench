
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u_int ;
struct agp_softc {int as_aperture_rid; unsigned int as_maxmem; int as_nextid; TYPE_1__* as_devnode; int as_memory; int as_lock; int as_aperture; } ;
typedef int device_t ;
struct TYPE_2__ {int si_drv1; } ;


 int AGP_APBASE ;
 int AGP_MAX_SIZE ;
 int ENOMEM ;
 int GID_WHEEL ;
 int MTX_DEF ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int agp_cdevsw ;
 int agp_devclass ;
 unsigned int** agp_max ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int devclass_find (char*) ;
 struct agp_softc* device_get_softc (int ) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ptoa (int ) ;
 int realmem ;

int
agp_generic_attach(device_t dev)
{
 struct agp_softc *sc = device_get_softc(dev);
 int i;
 u_int memsize;






 if (sc->as_aperture_rid != -1) {
  if (sc->as_aperture_rid == 0)
   sc->as_aperture_rid = AGP_APBASE;

  sc->as_aperture = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
      &sc->as_aperture_rid, RF_SHAREABLE);
  if (!sc->as_aperture)
   return ENOMEM;
 }





 memsize = ptoa(realmem) >> 20;
 for (i = 0; i < AGP_MAX_SIZE; i++) {
  if (memsize <= agp_max[i][0])
   break;
 }
 if (i == AGP_MAX_SIZE)
  i = AGP_MAX_SIZE - 1;
 sc->as_maxmem = agp_max[i][1] << 20U;





 mtx_init(&sc->as_lock, "agp lock", ((void*)0), MTX_DEF);




 agp_devclass = devclass_find("agp");
 TAILQ_INIT(&sc->as_memory);
 sc->as_nextid = 1;

 sc->as_devnode = make_dev(&agp_cdevsw,
     0, UID_ROOT, GID_WHEEL, 0600, "agpgart");
 sc->as_devnode->si_drv1 = dev;

 return 0;
}

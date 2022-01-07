
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spigen_softc {int * sc_cdev; int sc_adev; int sc_mtx; void* sc_dev; } ;
struct make_dev_args {int mda_mode; int mda_unit; void* mda_si_drv1; int mda_gid; int mda_uid; int * mda_cr; int * mda_devsw; int mda_flags; } ;
typedef void* device_t ;


 int GID_OPERATOR ;
 int MAKEDEV_WAITOK ;
 int MTX_DEF ;
 int SPIBUS_CS_HIGH ;
 int UID_ROOT ;
 int destroy_dev (int *) ;
 int device_get_nameunit (void*) ;
 void* device_get_parent (void*) ;
 struct spigen_softc* device_get_softc (void*) ;
 int device_get_unit (void*) ;
 int make_dev_alias_p (int ,int *,int *,char*,int const) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int **,char*,int,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 int spibus_get_cs (void*,int*) ;
 int spigen_cdevsw ;

__attribute__((used)) static int
spigen_attach(device_t dev)
{
 struct spigen_softc *sc;
 const int unit = device_get_unit(dev);
 int cs, res;
 struct make_dev_args mda;

 spibus_get_cs(dev, &cs);
 cs &= ~SPIBUS_CS_HIGH;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK;
 mda.mda_devsw = &spigen_cdevsw;
 mda.mda_cr = ((void*)0);
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_OPERATOR;
 mda.mda_mode = 0660;
 mda.mda_unit = unit;
 mda.mda_si_drv1 = dev;

 res = make_dev_s(&mda, &(sc->sc_cdev), "spigen%d.%d",
     device_get_unit(device_get_parent(dev)), cs);
 if (res) {
  return res;
 }
 return (0);
}

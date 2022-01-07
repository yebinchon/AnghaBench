
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdsmb_softc {int smbus; int lock; int * res; int rid; } ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int MTX_DEF ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int amdsmb_detach (int ) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct amdsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
amdsmb_attach(device_t dev)
{
 struct amdsmb_softc *amdsmb_sc = device_get_softc(dev);


 amdsmb_sc->rid = PCIR_BAR(0);

 amdsmb_sc->res = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &amdsmb_sc->rid, RF_ACTIVE);

 if (amdsmb_sc->res == ((void*)0)) {
  device_printf(dev, "could not map i/o space\n");
  return (ENXIO);
 }

 mtx_init(&amdsmb_sc->lock, device_get_nameunit(dev), "amdsmb", MTX_DEF);


 amdsmb_sc->smbus = device_add_child(dev, "smbus", -1);
 if (!amdsmb_sc->smbus) {
  amdsmb_detach(dev);
  return (EINVAL);
 }

 bus_generic_attach(dev);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_softc {int scells; int acells; } ;
struct simplebus_devinfo {int rl; int obdinfo; } ;
typedef int phandle_t ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct simplebus_softc* device_get_softc (int ) ;
 int free (struct simplebus_devinfo*,int ) ;
 struct simplebus_devinfo* malloc (int,int ,int) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,int ) ;
 int ofw_bus_intr_to_rl (int ,int ,int *,int *) ;
 int ofw_bus_reg_to_rl (int ,int ,int ,int ,int *) ;
 int resource_list_init (int *) ;

struct simplebus_devinfo *
simplebus_setup_dinfo(device_t dev, phandle_t node,
    struct simplebus_devinfo *di)
{
 struct simplebus_softc *sc;
 struct simplebus_devinfo *ndi;

 sc = device_get_softc(dev);
 if (di == ((void*)0))
  ndi = malloc(sizeof(*ndi), M_DEVBUF, M_WAITOK | M_ZERO);
 else
  ndi = di;
 if (ofw_bus_gen_setup_devinfo(&ndi->obdinfo, node) != 0) {
  if (di == ((void*)0))
   free(ndi, M_DEVBUF);
  return (((void*)0));
 }

 resource_list_init(&ndi->rl);
 ofw_bus_reg_to_rl(dev, node, sc->acells, sc->scells, &ndi->rl);
 ofw_bus_intr_to_rl(dev, node, &ndi->rl, ((void*)0));

 return (ndi);
}

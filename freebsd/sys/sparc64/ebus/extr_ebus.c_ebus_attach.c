
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ebus_softc {int sc_iinfo; } ;
struct TYPE_2__ {int obd_name; } ;
struct ebus_devinfo {TYPE_1__ edi_obdinfo; } ;
typedef scalar_t__ phandle_t ;
typedef int ofw_isa_intr_t ;
typedef int * device_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct ebus_devinfo*) ;
 int ebus_destroy_dinfo (struct ebus_devinfo*) ;
 struct ebus_devinfo* ebus_setup_dinfo (int *,struct ebus_softc*,scalar_t__) ;
 int ofw_bus_setup_iinfo (scalar_t__,int *,int) ;

__attribute__((used)) static int
ebus_attach(device_t dev, struct ebus_softc *sc, phandle_t node)
{
 struct ebus_devinfo *edi;
 device_t cdev;

 ofw_bus_setup_iinfo(node, &sc->sc_iinfo, sizeof(ofw_isa_intr_t));




 for (node = OF_child(node); node > 0; node = OF_peer(node)) {
  if ((edi = ebus_setup_dinfo(dev, sc, node)) == ((void*)0))
   continue;
  if ((cdev = device_add_child(dev, ((void*)0), -1)) == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       edi->edi_obdinfo.obd_name);
   ebus_destroy_dinfo(edi);
   continue;
  }
  device_set_ivars(cdev, edi);
 }
 return (bus_generic_attach(dev));
}

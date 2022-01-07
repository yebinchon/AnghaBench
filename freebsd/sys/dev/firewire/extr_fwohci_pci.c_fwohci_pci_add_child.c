
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int * bdev; } ;
struct fwohci_softc {TYPE_1__ fc; } ;
typedef int * device_t ;


 int DELAY (int) ;
 scalar_t__ cold ;
 int * device_add_child (int *,char const*,int) ;
 int device_delete_child (int *,int *) ;
 scalar_t__ device_get_softc (int *) ;
 int device_printf (int *,char*,int) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int fwohci_pci_detach (int *) ;
 int fwohci_poll (TYPE_1__*,int ,int) ;
 int splfw () ;
 int splx (int) ;

__attribute__((used)) static device_t
fwohci_pci_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct fwohci_softc *sc;
 device_t child;
 int err = 0;

 sc = (struct fwohci_softc *)device_get_softc(dev);
 child = device_add_child(dev, name, unit);
 if (child == ((void*)0))
  return (child);

 sc->fc.bdev = child;
 device_set_ivars(child, &sc->fc);

 err = device_probe_and_attach(child);
 if (err) {
  device_printf(dev, "probe_and_attach failed with err=%d\n",
      err);
  fwohci_pci_detach(dev);
  device_delete_child(dev, child);
  return ((void*)0);
 }





 if (cold) {
  int s;
  DELAY(250);
  s = splfw();
  fwohci_poll(&sc->fc, 0, -1);
  splx(s);
 }

 return (child);
}

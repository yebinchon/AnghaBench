
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4iov_softc {int sc_attached; int sc_main; } ;
typedef int nvlist_t ;
typedef int device_t ;


 int MPASS (int) ;
 int T4_READ_PORT_DEVICE (int ,int ,int *) ;
 int device_get_nameunit (int ) ;
 struct t4iov_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_get_function (int ) ;
 int pci_iov_attach_name (int ,int *,int *,char*,int ) ;
 int * pci_iov_schema_alloc_node () ;

__attribute__((used)) static int
t4iov_attach_child(device_t dev)
{
 struct t4iov_softc *sc;



 device_t pdev;
 int error;

 sc = device_get_softc(dev);
 MPASS(!sc->sc_attached);







 error = T4_READ_PORT_DEVICE(sc->sc_main, pci_get_function(dev), &pdev);
 if (error)
  return (0);
 sc->sc_attached = 1;
 return (0);
}

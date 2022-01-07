
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dummy; } ;
typedef int device_t ;


 struct mps_softc* device_get_softc (int ) ;
 int mps_free (struct mps_softc*) ;
 int mps_pci_free (struct mps_softc*) ;

__attribute__((used)) static int
mps_pci_detach(device_t dev)
{
 struct mps_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = mps_free(sc)) != 0)
  return (error);

 mps_pci_free(sc);
 return (0);
}

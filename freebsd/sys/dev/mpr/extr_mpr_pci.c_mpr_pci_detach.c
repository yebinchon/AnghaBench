
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dummy; } ;
typedef int device_t ;


 struct mpr_softc* device_get_softc (int ) ;
 int mpr_free (struct mpr_softc*) ;
 int mpr_pci_free (struct mpr_softc*) ;

__attribute__((used)) static int
mpr_pci_detach(device_t dev)
{
 struct mpr_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = mpr_free(sc)) != 0)
  return (error);

 mpr_pci_free(sc);
 return (0);
}

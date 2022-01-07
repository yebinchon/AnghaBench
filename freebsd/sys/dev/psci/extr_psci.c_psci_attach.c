
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psci_softc {int dummy; } ;
typedef scalar_t__ (* psci_initfn_t ) (int ,int) ;
typedef int device_t ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct psci_softc* device_get_softc (int ) ;
 struct psci_softc* psci_softc ;

__attribute__((used)) static int
psci_attach(device_t dev, psci_initfn_t psci_init, int default_version)
{
 struct psci_softc *sc = device_get_softc(dev);

 if (psci_softc != ((void*)0))
  return (ENXIO);

 KASSERT(psci_init != ((void*)0), ("PSCI init function cannot be NULL"));
 if (psci_init(dev, default_version))
  return (ENXIO);

 psci_softc = sc;

 return (0);
}

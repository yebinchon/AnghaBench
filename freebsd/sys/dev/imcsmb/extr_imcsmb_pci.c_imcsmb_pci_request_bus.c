
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imcsmb_pci_softc {int semaphore; } ;
typedef int device_t ;


 int EWOULDBLOCK ;
 scalar_t__ atomic_cmpset_acq_int (int *,int ,int) ;
 struct imcsmb_pci_softc* device_get_softc (int ) ;

int
imcsmb_pci_request_bus(device_t dev)
{
 struct imcsmb_pci_softc *sc;
 int rc;

 sc = device_get_softc(dev);
 rc = 0;




 if (atomic_cmpset_acq_int(&sc->semaphore, 0, 1) == 0) {
  rc = EWOULDBLOCK;
 }






 return (rc);
}

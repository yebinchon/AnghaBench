
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imcsmb_softc {int imcsmb_pci; } ;
typedef int device_t ;


 int EINVAL ;
 int SMB_DONTWAIT ;


 struct imcsmb_softc* device_get_softc (int ) ;
 int imcsmb_pci_release_bus (int ) ;
 int imcsmb_pci_request_bus (int ) ;

__attribute__((used)) static int
imcsmb_callback(device_t dev, int index, void *data)
{
 struct imcsmb_softc *sc;
 int *how;
 int rc;

 sc = device_get_softc(dev);
 how = (int *) data;

 switch (index) {
 case 128: {
  if (*how != SMB_DONTWAIT) {
   rc = EINVAL;
   goto out;
  }
  rc = imcsmb_pci_request_bus(sc->imcsmb_pci);
  break;
 }
 case 129:
  imcsmb_pci_release_bus(sc->imcsmb_pci);
  rc = 0;
  break;
 default:
  rc = EINVAL;
  break;
 }

out:
 return (rc);
}

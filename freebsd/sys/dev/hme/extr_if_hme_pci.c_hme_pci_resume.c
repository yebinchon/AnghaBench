
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_pci_softc {int hsc_hme; } ;
typedef int device_t ;


 struct hme_pci_softc* device_get_softc (int ) ;
 int hme_resume (int *) ;

__attribute__((used)) static int
hme_pci_resume(device_t dev)
{
 struct hme_pci_softc *hsc;

 hsc = device_get_softc(dev);
 hme_resume(&hsc->hsc_hme);
 return (0);
}

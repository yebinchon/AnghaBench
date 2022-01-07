
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_softc {int ciss_msi; int* ciss_irq_rid; int ciss_dev; } ;
struct TYPE_2__ {int flags; } ;


 int CISS_BOARD_NOMSI ;
 int CISS_MSI_COUNT ;
 int EINVAL ;
 int MIN (int,int) ;
 scalar_t__ bootverbose ;
 int ciss_lookup (int ) ;
 int ciss_printf (struct ciss_softc*,char*,int,char*) ;
 TYPE_1__* ciss_vendor_data ;
 int device_printf (int ,char*,int) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;

__attribute__((used)) static int
ciss_setup_msix(struct ciss_softc *sc)
{
    int val, i;


    i = ciss_lookup(sc->ciss_dev);
    if (ciss_vendor_data[i].flags & CISS_BOARD_NOMSI)
 return (EINVAL);





    val = pci_msix_count(sc->ciss_dev);
    if (val < CISS_MSI_COUNT) {
 val = pci_msi_count(sc->ciss_dev);
 device_printf(sc->ciss_dev, "got %d MSI messages]\n", val);
 if (val < CISS_MSI_COUNT)
     return (EINVAL);
    }
    val = MIN(val, CISS_MSI_COUNT);
    if (pci_alloc_msix(sc->ciss_dev, &val) != 0) {
 if (pci_alloc_msi(sc->ciss_dev, &val) != 0)
     return (EINVAL);
    }

    sc->ciss_msi = val;
    if (bootverbose)
 ciss_printf(sc, "Using %d MSIX interrupt%s\n", val,
     (val != 1) ? "s" : "");

    for (i = 0; i < val; i++)
 sc->ciss_irq_rid[i] = i + 1;

    return (0);

}

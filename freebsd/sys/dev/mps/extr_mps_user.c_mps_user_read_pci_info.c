
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mps_softc {int mps_dev; } ;
struct TYPE_3__ {int * PciHeader; scalar_t__ InterruptVector; int FunctionNumber; int DeviceNumber; int BusNumber; } ;
typedef TYPE_1__ mps_pci_info_t ;


 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static void
mps_user_read_pci_info(struct mps_softc *sc, mps_pci_info_t *data)
{
 int i;





 data->BusNumber = pci_get_bus(sc->mps_dev);
 data->DeviceNumber = pci_get_slot(sc->mps_dev);
 data->FunctionNumber = pci_get_function(sc->mps_dev);






 data->InterruptVector = 0;
 for (i = 0; i < sizeof (data->PciHeader); i++) {
  data->PciHeader[i] = pci_read_config(sc->mps_dev, i, 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agtiapi_softc {int my_dev; TYPE_1__* pCardInfo; } ;
typedef int U32_64 ;
struct TYPE_4__ {int busNum; int pciIOAddrUp; int pciIOAddrLow; int pciMemBase; int deviceNum; int pciMemBaseSpc; int vendorId; int deviceId; } ;
struct TYPE_3__ {int pciIOAddrUp; int pciIOAddrLow; int pciMemBase; int pciMemBaseSpc; } ;
typedef TYPE_2__ CardInfo_t ;


 int PCI_NUMBER_BARS ;
 int memcpy (int ,int ,int) ;
 int pci_get_bus (int ) ;
 int pci_get_device (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_vendor (int ) ;

int agtiapi_getCardInfo ( struct agtiapi_softc *pCard,
                          U32_64 size,
                          void *buffer )
{
  CardInfo_t *pCardInfo;

  pCardInfo = (CardInfo_t *)buffer;

  pCardInfo->deviceId = pci_get_device(pCard->my_dev);
  pCardInfo->vendorId =pci_get_vendor(pCard->my_dev) ;
  memcpy( pCardInfo->pciMemBaseSpc,
          pCard->pCardInfo->pciMemBaseSpc,
          ((sizeof(U32_64))*PCI_NUMBER_BARS) );
  pCardInfo->deviceNum = pci_get_slot(pCard->my_dev);
  pCardInfo->pciMemBase = pCard->pCardInfo->pciMemBase;
  pCardInfo->pciIOAddrLow = pCard->pCardInfo->pciIOAddrLow;
  pCardInfo->pciIOAddrUp = pCard->pCardInfo->pciIOAddrUp;
  pCardInfo->busNum =pci_get_bus(pCard->my_dev);
  return 0;
}

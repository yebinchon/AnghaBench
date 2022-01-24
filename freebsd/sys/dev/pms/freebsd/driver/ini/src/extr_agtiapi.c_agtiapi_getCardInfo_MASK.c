#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct agtiapi_softc {int /*<<< orphan*/  my_dev; TYPE_1__* pCardInfo; } ;
typedef  int /*<<< orphan*/  U32_64 ;
struct TYPE_4__ {int /*<<< orphan*/  busNum; int /*<<< orphan*/  pciIOAddrUp; int /*<<< orphan*/  pciIOAddrLow; int /*<<< orphan*/  pciMemBase; int /*<<< orphan*/  deviceNum; int /*<<< orphan*/  pciMemBaseSpc; int /*<<< orphan*/  vendorId; int /*<<< orphan*/  deviceId; } ;
struct TYPE_3__ {int /*<<< orphan*/  pciIOAddrUp; int /*<<< orphan*/  pciIOAddrLow; int /*<<< orphan*/  pciMemBase; int /*<<< orphan*/  pciMemBaseSpc; } ;
typedef  TYPE_2__ CardInfo_t ;

/* Variables and functions */
 int PCI_NUMBER_BARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 ( struct agtiapi_softc *pCard,
                          U32_64                size,
                          void                 *buffer )
{
  CardInfo_t       *pCardInfo;

  pCardInfo = (CardInfo_t *)buffer;

  pCardInfo->deviceId = FUNC2(pCard->my_dev);
  pCardInfo->vendorId =FUNC4(pCard->my_dev) ;
  FUNC0( pCardInfo->pciMemBaseSpc,
          pCard->pCardInfo->pciMemBaseSpc,
          ((sizeof(U32_64))*PCI_NUMBER_BARS) );
  pCardInfo->deviceNum = FUNC3(pCard->my_dev);
  pCardInfo->pciMemBase = pCard->pCardInfo->pciMemBase;
  pCardInfo->pciIOAddrLow = pCard->pCardInfo->pciIOAddrLow;
  pCardInfo->pciIOAddrUp = pCard->pCardInfo->pciIOAddrUp;
  pCardInfo->busNum =FUNC1(pCard->my_dev);
  return 0;
}
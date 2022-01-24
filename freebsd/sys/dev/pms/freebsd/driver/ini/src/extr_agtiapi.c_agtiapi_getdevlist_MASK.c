#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {void* Status; scalar_t__ FunctionSpecificArea; } ;
typedef  TYPE_3__ tiIOCTLPayload_t ;
struct TYPE_16__ {int devType_S_Rate; int /*<<< orphan*/  sasAddressLo; int /*<<< orphan*/  sasAddressHi; } ;
struct TYPE_18__ {int sasAddressHi; int sasAddressLo; int deviceType; int linkRate; int phyId; int phyID; unsigned long DeviceHandle; int /*<<< orphan*/  target_ssp_stp_smp; int /*<<< orphan*/  ishost; TYPE_2__ agDeviceInfo; struct TYPE_18__* tdData; } ;
typedef  TYPE_4__ tiDeviceHandle_t ;
typedef  TYPE_4__ tdsaDeviceData_t ;
struct TYPE_19__ {int deviceLength; int realDeviceCount; int /*<<< orphan*/ * pDeviceInfo; } ;
typedef  TYPE_6__ tdDeviceListPayload_t ;
typedef  TYPE_4__ tdDeviceInfoIOCTL_t ;
struct agtiapi_softc {int devDiscover; int portCount; int /*<<< orphan*/  tiRoot; TYPE_8__* pPortalData; } ;
typedef  int /*<<< orphan*/  bit8 ;
typedef  int bit32 ;
struct TYPE_15__ {int /*<<< orphan*/  tiPortalContext; } ;
struct TYPE_20__ {TYPE_1__ portalInfo; } ;
typedef  TYPE_8__ ag_portal_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,int) ; 
 int DISCOVERY_IN_PROGRESS ; 
 void* FUNC2 (int) ; 
 int IOCTL_CALL_FAIL ; 
 int IOCTL_CALL_INVALID_CODE ; 
 int IOCTL_CALL_SUCCESS ; 
 void* IOCTL_ERR_STATUS_INTERNAL_ERROR ; 
 void* IOCTL_ERR_STATUS_OK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  TEMP2 ; 
 TYPE_4__* agNULL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 TYPE_4__** FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__**,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

int FUNC9( struct agtiapi_softc *pCard,
                        tiIOCTLPayload_t *agIOCTLPayload )
{
  tdDeviceListPayload_t *pIoctlPayload =
    (tdDeviceListPayload_t *) agIOCTLPayload->FunctionSpecificArea;
  tdDeviceInfoIOCTL_t *pDeviceInfo = NULL;
  bit8		   *pDeviceInfoOrg;
  tdsaDeviceData_t *pDeviceData = NULL;
  tiDeviceHandle_t **devList = NULL;
  tiDeviceHandle_t **devHandleArray = NULL;
  tiDeviceHandle_t *pDeviceHandle = NULL;
  bit32 x, memNeeded1;
  bit32 count, total;
  bit32 MaxDeviceCount;
  bit32 ret_val=IOCTL_CALL_INVALID_CODE;
  ag_portal_data_t *pPortalData;
  bit8 *pDeviceHandleList = NULL;
  FUNC0( "agtiapi_getdevlist: Enter\n" );
  
  pDeviceInfoOrg = pIoctlPayload -> pDeviceInfo;
  MaxDeviceCount = pCard->devDiscover;
  if (MaxDeviceCount > pIoctlPayload->deviceLength )
  {   
    FUNC0( "agtiapi_getdevlist: MaxDeviceCount: %d > Requested device length: %d\n", MaxDeviceCount, pIoctlPayload->deviceLength );
    MaxDeviceCount = pIoctlPayload->deviceLength;
    ret_val = IOCTL_CALL_FAIL;
  }
  FUNC0( "agtiapi_getdevlist: MaxDeviceCount: %d > Requested device length: %d\n", MaxDeviceCount, pIoctlPayload->deviceLength );
  memNeeded1 = FUNC1( MaxDeviceCount * sizeof(tiDeviceHandle_t *),
                             sizeof(void *) );
  FUNC0("agtiapi_getdevlist: portCount %d\n", pCard->portCount);
  devList = FUNC4(memNeeded1, TEMP2, M_WAITOK); 
  if (devList == NULL)
  {
    FUNC0("agtiapi_getdevlist: failed to allocate memory\n");
    ret_val = IOCTL_CALL_FAIL;
    agIOCTLPayload->Status = IOCTL_ERR_STATUS_INTERNAL_ERROR;
    return ret_val;
  }
  FUNC6(devList, 0,  memNeeded1);
  pPortalData = &pCard->pPortalData[0];
  pDeviceHandleList = (bit8*)devList;
  for (total = x = 0; x < pCard->portCount; x++, pPortalData++)
  {
    count = FUNC7(&pCard->tiRoot,
                    &pPortalData->portalInfo.tiPortalContext,
		    ( tiDeviceHandle_t **)pDeviceHandleList ,MaxDeviceCount );
    if (count == DISCOVERY_IN_PROGRESS)
    {
      FUNC0( "agtiapi_getdevlist: DISCOVERY_IN_PROGRESS on "
                      "portal %d\n", x );
      FUNC3(devList, TEMP2);
      ret_val = IOCTL_CALL_FAIL;
      agIOCTLPayload->Status = IOCTL_ERR_STATUS_INTERNAL_ERROR;
      return ret_val;
    }
    total += count;
    pDeviceHandleList+= count*sizeof(tiDeviceHandle_t *);
    MaxDeviceCount-= count;
  }
  if (total > pIoctlPayload->deviceLength)
  {
    total = pIoctlPayload->deviceLength;
  }
  // dump device information from device handle list
  count = 0;
  
  devHandleArray = devList;
  for (x = 0; x < pCard->devDiscover; x++)
  {
     pDeviceHandle = (tiDeviceHandle_t*)devHandleArray[x];
    if (devList[x] != agNULL)
    {
      pDeviceData = devList [x]->tdData;
    
	pDeviceInfo = (tdDeviceInfoIOCTL_t*)(pDeviceInfoOrg + sizeof(tdDeviceInfoIOCTL_t) * count);
      if (pDeviceData != agNULL && pDeviceInfo != agNULL)
      {
        FUNC5( &pDeviceInfo->sasAddressHi,
                     pDeviceData->agDeviceInfo.sasAddressHi,
                     sizeof(bit32) );
        FUNC5( &pDeviceInfo->sasAddressLo,
                     pDeviceData->agDeviceInfo.sasAddressLo,
                     sizeof(bit32) );
#if 0
        pDeviceInfo->sasAddressHi =
          DMA_BEBIT32_TO_BIT32( pDeviceInfo->sasAddressHi );
        pDeviceInfo->sasAddressLo =
          DMA_BEBIT32_TO_BIT32( pDeviceInfo->sasAddressLo );
#endif

        pDeviceInfo->deviceType =
          ( pDeviceData->agDeviceInfo.devType_S_Rate & 0x30 ) >> 4;
        pDeviceInfo->linkRate   =
          pDeviceData->agDeviceInfo.devType_S_Rate & 0x0F;
        pDeviceInfo->phyId      =  pDeviceData->phyID;
 	pDeviceInfo->ishost	=  pDeviceData->target_ssp_stp_smp;
	pDeviceInfo->DeviceHandle= (unsigned long)pDeviceHandle;
	if(pDeviceInfo->deviceType == 0x02)
	{
	   bit8 *sasAddressHi;
	   bit8 *sasAddressLo;
	   FUNC8(&pCard->tiRoot, pDeviceData->phyID, &sasAddressHi, &sasAddressLo);
	   pDeviceInfo->sasAddressHi = FUNC2(*(bit32*)sasAddressHi);
	   pDeviceInfo->sasAddressLo = FUNC2(*(bit32*)sasAddressLo) + pDeviceData->phyID + 16;
	}
	else
	{
        pDeviceInfo->sasAddressHi =
          FUNC2( pDeviceInfo->sasAddressHi );
        pDeviceInfo->sasAddressLo =
          FUNC2( pDeviceInfo->sasAddressLo );
 	}

        FUNC0( "agtiapi_getdevlist: devicetype %x\n",
                        pDeviceInfo->deviceType );
        FUNC0( "agtiapi_getdevlist: linkrate %x\n",
                        pDeviceInfo->linkRate );
        FUNC0( "agtiapi_getdevlist: phyID %x\n",
                        pDeviceInfo->phyId );
        FUNC0( "agtiapi_getdevlist: addresshi %x\n",
                        pDeviceInfo->sasAddressHi );
        FUNC0( "agtiapi_getdevlist: addresslo %x\n",
                        pDeviceInfo->sasAddressHi );
      }
      else
      {
        FUNC0( "agtiapi_getdevlist: pDeviceData %p or pDeviceInfo "
                        "%p is NULL %d\n", pDeviceData, pDeviceInfo, x );
      }
      count++;
    }
  }
  pIoctlPayload->realDeviceCount = count;
  FUNC0( "agtiapi_getdevlist: Exit RealDeviceCount = %d\n", count );
  if (devList)
  {
    FUNC3(devList, TEMP2);
  }
  if(ret_val != IOCTL_CALL_FAIL)
  {
    ret_val = IOCTL_CALL_SUCCESS;
  }
  agIOCTLPayload->Status = IOCTL_ERR_STATUS_OK;
  return  ret_val;
}
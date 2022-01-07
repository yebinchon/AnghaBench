
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int WORD ;
typedef scalar_t__ UCHAR ;
struct TYPE_23__ {TYPE_8__* mvChannel; } ;
struct TYPE_22__ {int writeCacheEnabled; int writeCacheSupported; int readAheadEnabled; int readAheadSupported; } ;
struct TYPE_21__ {scalar_t__ adapterId; TYPE_9__* IALData; } ;
struct TYPE_20__ {size_t channelNumber; int* identifyDevice; scalar_t__ queuedDMA; TYPE_7__* mvSataAdapter; } ;
struct TYPE_14__ {int ModelNumber; } ;
struct TYPE_19__ {size_t PathId; int DeviceModeSetting; int Flags; int TCQSupported; int TCQEnabled; int NCQSupported; int NCQEnabled; int WriteCacheEnabled; int WriteCacheSupported; int ReadAheadEnabled; int ReadAheadSupported; TYPE_10__ IdentifyData; int DeviceType; int UsableMode; scalar_t__ ControllerId; scalar_t__ TargetId; } ;
struct TYPE_18__ {int SataCapability; int ModelNumber; } ;
struct TYPE_15__ {int bDeUserSelectMode; int bDeModeSetting; int df_on_line; int bDeUsable_Mode; TYPE_6__* mv; scalar_t__ df_user_mode_set; } ;
struct TYPE_16__ {TYPE_1__ disk; } ;
struct TYPE_17__ {scalar_t__ VDeviceType; scalar_t__ vf_bootmark; scalar_t__ vf_bootable; TYPE_2__ u; } ;
typedef TYPE_3__* PVDevice ;
typedef TYPE_4__* PIDENTIFY_DATA ;
typedef TYPE_5__* PDEVICE_INFO ;
typedef TYPE_6__ MV_SATA_CHANNEL ;
typedef TYPE_7__ MV_SATA_ADAPTER ;
typedef TYPE_8__ MV_CHANNEL ;
typedef int IDENTIFY_DATA2 ;
typedef TYPE_9__ IAL_ADAPTER_T ;


 int DEVICE_FLAG_BOOTDISK ;
 int DEVICE_FLAG_BOOTMARK ;
 int DEVICE_FLAG_DISABLED ;
 int DEVICE_FLAG_IS_SPARE ;
 int DEVICE_FLAG_SATA ;
 int IDEN_MODEL_OFFSET ;
 size_t IDEN_SATA_CAPABILITIES ;
 size_t IDEN_SUPPORTED_COMMANDS2 ;
 scalar_t__ MV_EDMA_MODE_NATIVE_QUEUING ;
 scalar_t__ MV_EDMA_MODE_QUEUED ;
 scalar_t__ MV_SATA_GEN_2 (TYPE_7__*) ;
 int PDT_HARDDISK ;
 scalar_t__ VD_SPARE ;
 int memcpy (TYPE_10__*,int*,int) ;
 int shortswap (int) ;

__attribute__((used)) static int get_disk_info(PVDevice pVDevice, PDEVICE_INFO pDiskInfo)
{
 MV_SATA_ADAPTER *pSataAdapter;
 MV_SATA_CHANNEL *pSataChannel;
 IAL_ADAPTER_T *pAdapter;
 MV_CHANNEL *channelInfo;
 char *p;
 int i;


 pSataChannel = pVDevice->u.disk.mv;
 if(pSataChannel == ((void*)0)) return -1;
 pDiskInfo->TargetId = 0;
 pSataAdapter = pSataChannel->mvSataAdapter;
 if(pSataAdapter == ((void*)0)) return -1;

 pAdapter = pSataAdapter->IALData;

 pDiskInfo->PathId = pSataChannel->channelNumber;
 pDiskInfo->ControllerId = (UCHAR)pSataAdapter->adapterId;






 if (pVDevice->u.disk.df_user_mode_set)
  pDiskInfo->DeviceModeSetting = pVDevice->u.disk.bDeUserSelectMode;
 else if (((((PIDENTIFY_DATA)pVDevice->u.disk.mv->identifyDevice)->SataCapability) & 3)==2)
  pDiskInfo->DeviceModeSetting = 15;
 else {
  p = (char *)&((PIDENTIFY_DATA)pVDevice->u.disk.mv->identifyDevice)->ModelNumber;
  if (*(WORD*)p==(0x5354) &&
   (*(WORD*)(p+8)==(0x4153) || (p[8]=='A' && p[11]=='S')))
   pDiskInfo->DeviceModeSetting = 15;
  else
   pDiskInfo->DeviceModeSetting = pVDevice->u.disk.bDeModeSetting;
 }

 pDiskInfo->UsableMode = pVDevice->u.disk.bDeUsable_Mode;

 pDiskInfo->DeviceType = PDT_HARDDISK;

 pDiskInfo->Flags = 0x0;


 if(!pVDevice->u.disk.df_on_line)
  pDiskInfo->Flags |= DEVICE_FLAG_DISABLED;


 if(pVDevice->vf_bootable)
  pDiskInfo->Flags |= DEVICE_FLAG_BOOTDISK;


 if(pVDevice->vf_bootmark)
  pDiskInfo->Flags |= DEVICE_FLAG_BOOTMARK;

 pDiskInfo->Flags |= DEVICE_FLAG_SATA;


 if(pVDevice->VDeviceType == VD_SPARE)
  pDiskInfo->Flags |= DEVICE_FLAG_IS_SPARE;

 memcpy(&(pDiskInfo->IdentifyData), (pSataChannel->identifyDevice), sizeof(IDENTIFY_DATA2));
 p = (char *)&pDiskInfo->IdentifyData.ModelNumber;
 for (i = 0; i < 20; i++)
  ((WORD*)p)[i] = shortswap(pSataChannel->identifyDevice[IDEN_MODEL_OFFSET+i]);
 p[39] = '\0';

 channelInfo = &pAdapter->mvChannel[pSataChannel->channelNumber];
 pDiskInfo->ReadAheadSupported = channelInfo->readAheadSupported;
 pDiskInfo->ReadAheadEnabled = channelInfo->readAheadEnabled;
 pDiskInfo->WriteCacheSupported = channelInfo->writeCacheSupported;
 pDiskInfo->WriteCacheEnabled = channelInfo->writeCacheEnabled;
 pDiskInfo->TCQSupported = (pSataChannel->identifyDevice[IDEN_SUPPORTED_COMMANDS2] & (0x2))!=0;
 pDiskInfo->TCQEnabled = pSataChannel->queuedDMA==MV_EDMA_MODE_QUEUED;
 pDiskInfo->NCQSupported = MV_SATA_GEN_2(pSataAdapter) &&
  (pSataChannel->identifyDevice[IDEN_SATA_CAPABILITIES] & (0x0100));
 pDiskInfo->NCQEnabled = pSataChannel->queuedDMA==MV_EDMA_MODE_NATIVE_QUEUING;
 return 0;
}

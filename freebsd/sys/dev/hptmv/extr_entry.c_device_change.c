
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {int adapterIoBaseAddress; int ** sataChannel; } ;
struct TYPE_22__ {TYPE_6__* VDevices; TYPE_7__ mvSataAdapter; scalar_t__ beeping; } ;
struct TYPE_15__ {scalar_t__ dDeRealCapacity; scalar_t__ df_removable_drive; scalar_t__ df_atapi; } ;
struct TYPE_16__ {TYPE_1__ disk; } ;
struct TYPE_20__ {size_t VDeviceType; int vf_online; TYPE_5__* pParent; int pfnDeviceFailed; int pfnSendCommand; TYPE_2__ u; scalar_t__ VDeviceCapacity; } ;
struct TYPE_17__ {int bArnMember; int ** pMember; } ;
struct TYPE_18__ {TYPE_3__ array; } ;
struct TYPE_19__ {TYPE_4__ u; } ;
typedef TYPE_6__* PVDevice ;
typedef size_t MV_U8 ;
typedef int MV_SATA_CHANNEL ;
typedef TYPE_7__ MV_SATA_ADAPTER ;
typedef TYPE_8__ IAL_ADAPTER_T ;


 int BeepOff (int ) ;
 int ET_DEVICE_PLUGGED ;
 int RegisterVDevice (TYPE_6__*) ;
 scalar_t__ SAVE_FOR_RAID_INFO ;
 size_t VD_ATAPI ;
 size_t VD_REMOVABLE ;
 size_t VD_SINGLE_DISK ;
 int fCheckBootable (TYPE_6__*) ;
 int fNotifyGUI (int ,TYPE_6__*) ;
 int failDevice (TYPE_6__*) ;
 int init_vdev_params (TYPE_8__*,size_t) ;
 int * pfnDeviceFailed ;
 int * pfnSendCommand ;

__attribute__((used)) static void device_change(IAL_ADAPTER_T *pAdapter , MV_U8 channelIndex, int plugged)
{
 PVDevice pVDev;
 MV_SATA_ADAPTER *pMvSataAdapter = &pAdapter->mvSataAdapter;
 MV_SATA_CHANNEL *pMvSataChannel = pMvSataAdapter->sataChannel[channelIndex];

 if (!pMvSataChannel) return;

 if (plugged)
 {
  pVDev = &(pAdapter->VDevices[channelIndex]);
  init_vdev_params(pAdapter, channelIndex);

  pVDev->VDeviceType = pVDev->u.disk.df_atapi? VD_ATAPI :
   pVDev->u.disk.df_removable_drive? VD_REMOVABLE : VD_SINGLE_DISK;

  pVDev->VDeviceCapacity = pVDev->u.disk.dDeRealCapacity-SAVE_FOR_RAID_INFO;
  pVDev->pfnSendCommand = pfnSendCommand[pVDev->VDeviceType];
  pVDev->pfnDeviceFailed = pfnDeviceFailed[pVDev->VDeviceType];
  pVDev->vf_online = 1;
  fNotifyGUI(ET_DEVICE_PLUGGED,pVDev);
  fCheckBootable(pVDev);
  RegisterVDevice(pVDev);


  if (pAdapter->beeping) {
   pAdapter->beeping = 0;
   BeepOff(pAdapter->mvSataAdapter.adapterIoBaseAddress);
  }


 }
 else
 {
  pVDev = &(pAdapter->VDevices[channelIndex]);
  failDevice(pVDev);
 }
}

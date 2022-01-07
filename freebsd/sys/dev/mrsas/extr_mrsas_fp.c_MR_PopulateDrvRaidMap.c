
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef unsigned int u_int8_t ;
typedef int u_int32_t ;
typedef unsigned int u_int16_t ;
struct mrsas_softc {int map_id; int mrsas_dev; int drv_map_sz; scalar_t__* raidmap_mem; scalar_t__ max256vdSupport; scalar_t__ maxRaidMapSize; TYPE_6__** ld_drv_map; } ;
struct TYPE_12__ {int targetId; int seqNum; scalar_t__ rowSize; int size; } ;
struct TYPE_19__ {TYPE_1__ ldRaid; } ;
struct TYPE_18__ {unsigned int ldCount; unsigned int* ldTgtIdToLd; int totalSize; TYPE_9__* devHndlInfo; TYPE_9__* arMapInfo; TYPE_9__* ldSpanMap; int fpPdIoTimeoutSec; } ;
struct TYPE_17__ {TYPE_7__ raidMap; } ;
struct TYPE_16__ {unsigned int ldCount; int totalSize; TYPE_10__* devHndlInfo; TYPE_10__* arMapInfo; TYPE_9__* ldSpanMap; scalar_t__* ldTgtIdToLd; int fpPdIoTimeoutSec; } ;
struct TYPE_15__ {TYPE_5__ raidMap; } ;
struct TYPE_14__ {TYPE_10__* devHndlInfo; TYPE_10__* arMapInfo; TYPE_10__* ldSpanMap; scalar_t__* ldTgtIdToLd; int fpPdIoTimeoutSec; scalar_t__ ldCount; } ;
struct TYPE_13__ {int targetId; int seqNum; scalar_t__ rowSize; int size; } ;
struct TYPE_11__ {TYPE_2__ ldRaid; } ;
typedef int MR_LD_SPAN_MAP ;
typedef TYPE_3__ MR_FW_RAID_MAP_EXT ;
typedef TYPE_4__ MR_FW_RAID_MAP_ALL ;
typedef TYPE_5__ MR_FW_RAID_MAP ;
typedef TYPE_6__ MR_DRV_RAID_MAP_ALL ;
typedef TYPE_7__ MR_DRV_RAID_MAP ;
typedef int MR_DEV_HANDLE_INFO ;
typedef int MR_ARRAY_INFO ;


 int MAX_API_ARRAYS_EXT ;
 unsigned int MAX_LOGICAL_DRIVES_EXT ;
 int MAX_RAIDMAP_ARRAYS ;
 unsigned int MAX_RAIDMAP_LOGICAL_DRIVES ;
 int MAX_RAIDMAP_PHYSICAL_DEVICES ;
 unsigned int MAX_RAIDMAP_VIEWS ;
 int MR_PopulateDrvRaidMapVentura (struct mrsas_softc*) ;
 int device_printf (int ,char*,...) ;
 int memcpy (TYPE_9__*,TYPE_10__*,int) ;
 int memset (TYPE_6__*,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
MR_PopulateDrvRaidMap(struct mrsas_softc *sc)
{
 MR_FW_RAID_MAP_ALL *fw_map_old = ((void*)0);
 MR_FW_RAID_MAP_EXT *fw_map_ext;
 MR_FW_RAID_MAP *pFwRaidMap = ((void*)0);
 unsigned int i;
 u_int16_t ld_count;

 MR_DRV_RAID_MAP_ALL *drv_map = sc->ld_drv_map[(sc->map_id & 1)];
 MR_DRV_RAID_MAP *pDrvRaidMap = &drv_map->raidMap;

 if (sc->maxRaidMapSize) {
  return MR_PopulateDrvRaidMapVentura(sc);
 } else if (sc->max256vdSupport) {
  fw_map_ext = (MR_FW_RAID_MAP_EXT *) sc->raidmap_mem[(sc->map_id & 1)];
  ld_count = (u_int16_t)(fw_map_ext->ldCount);
  if (ld_count > MAX_LOGICAL_DRIVES_EXT) {
   device_printf(sc->mrsas_dev,
       "mrsas: LD count exposed in RAID map in not valid\n");
   return 1;
  }
  memset(drv_map, 0, sc->drv_map_sz);
  pDrvRaidMap->ldCount = ld_count;
  pDrvRaidMap->fpPdIoTimeoutSec = fw_map_ext->fpPdIoTimeoutSec;
  for (i = 0; i < (MAX_LOGICAL_DRIVES_EXT); i++) {
   pDrvRaidMap->ldTgtIdToLd[i] = (u_int16_t)fw_map_ext->ldTgtIdToLd[i];
  }
  memcpy(pDrvRaidMap->ldSpanMap, fw_map_ext->ldSpanMap, sizeof(MR_LD_SPAN_MAP) * ld_count);
  memcpy(pDrvRaidMap->arMapInfo, fw_map_ext->arMapInfo,
      sizeof(MR_ARRAY_INFO) * MAX_API_ARRAYS_EXT);
  memcpy(pDrvRaidMap->devHndlInfo, fw_map_ext->devHndlInfo,
      sizeof(MR_DEV_HANDLE_INFO) * MAX_RAIDMAP_PHYSICAL_DEVICES);

  pDrvRaidMap->totalSize = sizeof(MR_FW_RAID_MAP_EXT);
 } else {
  fw_map_old = (MR_FW_RAID_MAP_ALL *) sc->raidmap_mem[(sc->map_id & 1)];
  pFwRaidMap = &fw_map_old->raidMap;
  memset(drv_map, 0, sc->drv_map_sz);
  pDrvRaidMap->totalSize = pFwRaidMap->totalSize;
  pDrvRaidMap->ldCount = pFwRaidMap->ldCount;
  pDrvRaidMap->fpPdIoTimeoutSec =
      pFwRaidMap->fpPdIoTimeoutSec;

  for (i = 0; i < MAX_RAIDMAP_LOGICAL_DRIVES + MAX_RAIDMAP_VIEWS; i++) {
   pDrvRaidMap->ldTgtIdToLd[i] =
       (u_int8_t)pFwRaidMap->ldTgtIdToLd[i];
  }

  for (i = 0; i < pDrvRaidMap->ldCount; i++) {
   pDrvRaidMap->ldSpanMap[i] =
       pFwRaidMap->ldSpanMap[i];
  }

  memcpy(pDrvRaidMap->arMapInfo, pFwRaidMap->arMapInfo,
      sizeof(MR_ARRAY_INFO) * MAX_RAIDMAP_ARRAYS);
  memcpy(pDrvRaidMap->devHndlInfo, pFwRaidMap->devHndlInfo,
      sizeof(MR_DEV_HANDLE_INFO) *
      MAX_RAIDMAP_PHYSICAL_DEVICES);
 }
 return 0;
}

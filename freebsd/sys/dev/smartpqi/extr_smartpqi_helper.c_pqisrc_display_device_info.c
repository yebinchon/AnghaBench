
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_3__ {int raid_level; int queue_depth; scalar_t__ expose_device; scalar_t__ offload_enabled_pending; scalar_t__ offload_config; int model; int vendor; int lun; int target; int bus; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_INFO (char*,char*,int ,int ,int ,int ,int ,int ,char,char,char,int ) ;
 int pqisrc_raidlevel_to_string (int ) ;

void pqisrc_display_device_info(pqisrc_softstate_t *softs,
 char *action, pqi_scsi_dev_t *device)
{
 DBG_INFO( "%s scsi BTL %d:%d:%d:  %.8s %.16s %-12s SSDSmartPathCap%c En%c Exp%c qd=%d\n",
  action,
  device->bus,
  device->target,
  device->lun,
  device->vendor,
  device->model,
  pqisrc_raidlevel_to_string(device->raid_level),
  device->offload_config ? '+' : '-',
  device->offload_enabled_pending ? '+' : '-',
  device->expose_device ? '+' : '-',
  device->queue_depth);
 pqisrc_raidlevel_to_string(device->raid_level);
}

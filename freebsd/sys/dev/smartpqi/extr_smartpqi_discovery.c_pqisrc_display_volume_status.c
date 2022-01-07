
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pqisrc_softstate_t ;
struct TYPE_3__ {int volume_status; int lun; int target; int bus; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_DISC (char*,int ,int ,int ,char*) ;
 int DBG_FUNC (char*) ;
__attribute__((used)) static void pqisrc_display_volume_status(pqisrc_softstate_t *softs,
 pqi_scsi_dev_t *device)
{
 char *status;

 DBG_FUNC("IN\n");
 switch (device->volume_status) {
 case 137:
  status = "Volume is online.";
  break;
 case 129:
  status = "Volume is undergoing background erase process.";
  break;
 case 138:
  status = "Volume is waiting for transforming volume.";
  break;
 case 128:
  status = "Volume is undergoing rapid parity initialization process.";
  break;
 case 134:
  status = "Volume is queued for rapid parity initialization process.";
  break;
 case 139:
  status = "Volume is encrypted and cannot be accessed because key is not present.";
  break;
 case 133:
  status = "Volume is not encrypted and cannot be accessed because controller is in encryption-only mode.";
  break;
 case 131:
  status = "Volume is undergoing encryption process.";
  break;
 case 130:
  status = "Volume is undergoing encryption re-keying process.";
  break;
 case 140:
  status = "Volume is encrypted and cannot be accessed because controller does not have encryption enabled.";
  break;
 case 136:
  status = "Volume is pending migration to encrypted state, but process has not started.";
  break;
 case 135:
  status = "Volume is encrypted and is pending encryption rekeying.";
  break;
 case 132:
  status = "Volume status is not available through vital product data pages.";
  break;
 default:
  status = "Volume is in an unknown state.";
  break;
 }

 DBG_DISC("scsi BTL %d:%d:%d %s\n",
  device->bus, device->target, device->lun, status);
 DBG_FUNC("OUT\n");
}

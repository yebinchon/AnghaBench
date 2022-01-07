
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int raid_mwce_setting; } ;
struct mpt_raid_volume {int flags; TYPE_3__* config_page; } ;
struct mpt_raid_action_result {scalar_t__ action_status; } ;
struct TYPE_11__ {int IOCStatus; } ;
typedef TYPE_2__ request_t ;
typedef int data ;
struct TYPE_13__ {int Settings; } ;
struct TYPE_10__ {int Flags; } ;
struct TYPE_12__ {TYPE_7__ VolumeSettings; TYPE_1__ VolumeStatus; } ;
typedef TYPE_3__ CONFIG_PAGE_RAID_VOL_0 ;


 int ETIMEDOUT ;
 int FALSE ;
 scalar_t__ MPI_IOCSTATUS_SUCCESS ;
 int MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE ;
 int MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS ;
 scalar_t__ MPI_RAID_ACTION_ASTATUS_SUCCESS ;
 int MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS ;




 int MPT_RVF_WCE_CHANGED ;
 scalar_t__ REQ_IOCSTATUS (TYPE_2__*) ;
 struct mpt_raid_action_result* REQ_TO_RAID_ACTION_RESULT (TYPE_2__*) ;
 int TRUE ;
 int memcpy (int *,TYPE_7__*,int) ;
 int mpt_free_request (struct mpt_softc*,TYPE_2__*) ;
 TYPE_2__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_raid_req (struct mpt_softc*,struct mpt_raid_volume*,int *,TYPE_2__*,int ,int ,int ,int ,int ,int ) ;
 int mpt_vol_prt (struct mpt_softc*,struct mpt_raid_volume*,char*,...) ;

__attribute__((used)) static void
mpt_verify_mwce(struct mpt_softc *mpt, struct mpt_raid_volume *mpt_vol)
{
 request_t *req;
 struct mpt_raid_action_result *ar;
 CONFIG_PAGE_RAID_VOL_0 *vol_pg;
 uint32_t data;
 int rv;
 int resyncing;
 int mwce;

 vol_pg = mpt_vol->config_page;
 resyncing = vol_pg->VolumeStatus.Flags
    & MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS;
 mwce = vol_pg->VolumeSettings.Settings
      & MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE;





 switch (mpt->raid_mwce_setting) {
 case 128:
  if ((resyncing && mwce) || (!resyncing && !mwce)) {
   return;
  }
  mpt_vol->flags ^= MPT_RVF_WCE_CHANGED;
  if ((mpt_vol->flags & MPT_RVF_WCE_CHANGED) == 0) {





   return;
  }
  break;
 case 129:
  if (mwce)
   return;
  break;
 case 130:
  if (!mwce)
   return;
  break;
 case 131:
  return;
 }

 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0)) {
  mpt_vol_prt(mpt, mpt_vol,
       "mpt_verify_mwce: Get request failed!\n");
  return;
 }

 vol_pg->VolumeSettings.Settings ^=
     MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE;
 memcpy(&data, &vol_pg->VolumeSettings, sizeof(data));
 vol_pg->VolumeSettings.Settings ^=
     MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE;
 rv = mpt_issue_raid_req(mpt, mpt_vol, ((void*)0), req,
    MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS,
    data, 0, 0,
             FALSE, TRUE);
 if (rv == ETIMEDOUT) {
  mpt_vol_prt(mpt, mpt_vol, "mpt_verify_mwce: "
       "Write Cache Enable Timed-out\n");
  return;
 }
 ar = REQ_TO_RAID_ACTION_RESULT(req);
 if (rv != 0
  || REQ_IOCSTATUS(req) != MPI_IOCSTATUS_SUCCESS
  || (ar->action_status != MPI_RAID_ACTION_ASTATUS_SUCCESS)) {
  mpt_vol_prt(mpt, mpt_vol, "Write Cache Enable Failed: "
       "%d:%x:%x\n", rv, req->IOCStatus,
       ar->action_status);
 } else {
  vol_pg->VolumeSettings.Settings ^=
      MPI_RAIDVOL0_SETTING_WRITE_CACHING_ENABLE;
 }
 mpt_free_request(mpt, req);
}

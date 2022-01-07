
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct mpt_softc {int raid_resync_rate; } ;
struct mpt_raid_volume {TYPE_2__* config_page; } ;
struct mpt_raid_action_result {scalar_t__ action_status; } ;
struct TYPE_9__ {int IOCStatus; } ;
typedef TYPE_1__ request_t ;
typedef int data ;
struct TYPE_11__ {int Settings; } ;
struct TYPE_10__ {scalar_t__ ResyncRate; TYPE_6__ VolumeSettings; } ;
typedef TYPE_2__ CONFIG_PAGE_RAID_VOL_0 ;


 int ETIMEDOUT ;
 int FALSE ;
 scalar_t__ MPI_IOCSTATUS_SUCCESS ;
 int MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC ;
 scalar_t__ MPI_RAID_ACTION_ASTATUS_SUCCESS ;
 int MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS ;
 int MPI_RAID_ACTION_SET_RESYNC_RATE ;
 int MPT_RAID_RESYNC_RATE_NC ;
 scalar_t__ REQ_IOCSTATUS (TYPE_1__*) ;
 struct mpt_raid_action_result* REQ_TO_RAID_ACTION_RESULT (TYPE_1__*) ;
 int TRUE ;
 int memcpy (int*,TYPE_6__*,int) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_raid_req (struct mpt_softc*,struct mpt_raid_volume*,int *,TYPE_1__*,int ,int,int ,int ,int ,int ) ;
 int mpt_vol_prt (struct mpt_softc*,struct mpt_raid_volume*,char*,...) ;

__attribute__((used)) static void
mpt_verify_resync_rate(struct mpt_softc *mpt, struct mpt_raid_volume *mpt_vol)
{
 request_t *req;
 struct mpt_raid_action_result *ar;
 CONFIG_PAGE_RAID_VOL_0 *vol_pg;
 u_int prio;
 int rv;

 vol_pg = mpt_vol->config_page;

 if (mpt->raid_resync_rate == MPT_RAID_RESYNC_RATE_NC)
  return;





 prio = vol_pg->VolumeSettings.Settings
      & MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC;
 if (vol_pg->ResyncRate != 0
  && vol_pg->ResyncRate != mpt->raid_resync_rate) {

  req = mpt_get_request(mpt, TRUE);
  if (req == ((void*)0)) {
   mpt_vol_prt(mpt, mpt_vol, "mpt_verify_resync_rate: "
        "Get request failed!\n");
   return;
  }

  rv = mpt_issue_raid_req(mpt, mpt_vol, ((void*)0), req,
     MPI_RAID_ACTION_SET_RESYNC_RATE,
     mpt->raid_resync_rate, 0,
            0, FALSE, TRUE);
  if (rv == ETIMEDOUT) {
   mpt_vol_prt(mpt, mpt_vol, "mpt_refresh_raid_data: "
        "Resync Rate Setting Timed-out\n");
   return;
  }

  ar = REQ_TO_RAID_ACTION_RESULT(req);
  if (rv != 0
   || REQ_IOCSTATUS(req) != MPI_IOCSTATUS_SUCCESS
   || (ar->action_status != MPI_RAID_ACTION_ASTATUS_SUCCESS)) {
   mpt_vol_prt(mpt, mpt_vol, "Resync Rate Setting Failed: "
        "%d:%x:%x\n", rv, req->IOCStatus,
        ar->action_status);
  } else
   vol_pg->ResyncRate = mpt->raid_resync_rate;
  mpt_free_request(mpt, req);
 } else if ((prio && mpt->raid_resync_rate < 128)
  || (!prio && mpt->raid_resync_rate >= 128)) {
  uint32_t data;

  req = mpt_get_request(mpt, TRUE);
  if (req == ((void*)0)) {
   mpt_vol_prt(mpt, mpt_vol, "mpt_verify_resync_rate: "
        "Get request failed!\n");
   return;
  }

  vol_pg->VolumeSettings.Settings ^=
      MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC;
  memcpy(&data, &vol_pg->VolumeSettings, sizeof(data));
  vol_pg->VolumeSettings.Settings ^=
      MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC;
  rv = mpt_issue_raid_req(mpt, mpt_vol, ((void*)0), req,
     MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS,
     data, 0, 0,
              FALSE, TRUE);
  if (rv == ETIMEDOUT) {
   mpt_vol_prt(mpt, mpt_vol, "mpt_refresh_raid_data: "
        "Resync Rate Setting Timed-out\n");
   return;
  }
  ar = REQ_TO_RAID_ACTION_RESULT(req);
  if (rv != 0
   || REQ_IOCSTATUS(req) != MPI_IOCSTATUS_SUCCESS
   || (ar->action_status != MPI_RAID_ACTION_ASTATUS_SUCCESS)) {
   mpt_vol_prt(mpt, mpt_vol, "Resync Rate Setting Failed: "
        "%d:%x:%x\n", rv, req->IOCStatus,
        ar->action_status);
  } else {
   vol_pg->VolumeSettings.Settings ^=
       MPI_RAIDVOL0_SETTING_PRIORITY_RESYNC;
  }

  mpt_free_request(mpt, req);
 }
}

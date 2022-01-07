
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mpt_softc {struct mpt_raid_disk* raid_disks; int raid_page0_len; } ;
struct mpt_raid_volume {int sync_progress; int flags; TYPE_4__* config_page; } ;
struct mpt_raid_disk {int member_number; struct mpt_raid_volume* volume; } ;
struct TYPE_10__ {int indicator_struct; } ;
struct mpt_raid_action_result {scalar_t__ action_status; TYPE_3__ action_data; } ;
typedef int request_t ;
struct TYPE_12__ {int VolumePageNumber; } ;
struct TYPE_9__ {int Flags; } ;
struct TYPE_11__ {int NumPhysDisks; scalar_t__ VolumeType; TYPE_2__ VolumeStatus; TYPE_1__* PhysDisk; int Header; } ;
struct TYPE_8__ {int PhysDiskNum; int PhysDiskMap; } ;
typedef TYPE_4__ CONFIG_PAGE_RAID_VOL_0 ;
typedef TYPE_5__ CONFIG_PAGE_IOC_2_RAID_VOL ;


 int ETIMEDOUT ;
 int FALSE ;
 int MPI_CONFIG_PAGETYPE_RAID_VOLUME ;
 scalar_t__ MPI_IOCSTATUS_SUCCESS ;
 int MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS ;
 scalar_t__ MPI_RAID_ACTION_ASTATUS_SUCCESS ;
 int MPI_RAID_ACTION_INDICATOR_STRUCT ;
 scalar_t__ MPI_RAID_VOL_TYPE_IM ;
 int MPT_RVF_ACTIVE ;
 int MPT_RVF_UP2DATE ;
 scalar_t__ REQ_IOCSTATUS (int *) ;
 struct mpt_raid_action_result* REQ_TO_RAID_ACTION_RESULT (int *) ;
 int TRUE ;
 int memcpy (int *,int *,int) ;
 int mpt2host_config_page_raid_vol_0 (TYPE_4__*) ;
 int mpt2host_mpi_raid_vol_indicator (int *) ;
 int mpt_free_request (struct mpt_softc*,int *) ;
 int * mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_issue_raid_req (struct mpt_softc*,struct mpt_raid_volume*,int *,int *,int ,int ,int ,int ,int ,int ) ;
 int mpt_read_cfg_header (struct mpt_softc*,int ,int ,int ,int *,int ,int) ;
 int mpt_read_cur_cfg_page (struct mpt_softc*,int ,int *,int ,int ,int) ;
 int mpt_vol_prt (struct mpt_softc*,struct mpt_raid_volume*,char*,...) ;

__attribute__((used)) static void
mpt_refresh_raid_vol(struct mpt_softc *mpt, struct mpt_raid_volume *mpt_vol,
    CONFIG_PAGE_IOC_2_RAID_VOL *ioc_vol)
{
 CONFIG_PAGE_RAID_VOL_0 *vol_pg;
 struct mpt_raid_action_result *ar;
 request_t *req;
 int rv;
 int i;

 vol_pg = mpt_vol->config_page;
 mpt_vol->flags &= ~MPT_RVF_UP2DATE;

 rv = mpt_read_cfg_header(mpt, MPI_CONFIG_PAGETYPE_RAID_VOLUME, 0,
     ioc_vol->VolumePageNumber, &vol_pg->Header, TRUE, 5000);
 if (rv != 0) {
  mpt_vol_prt(mpt, mpt_vol,
      "mpt_refresh_raid_vol: Failed to read RAID Vol Hdr(%d)\n",
      ioc_vol->VolumePageNumber);
  return;
 }

 rv = mpt_read_cur_cfg_page(mpt, ioc_vol->VolumePageNumber,
     &vol_pg->Header, mpt->raid_page0_len, TRUE, 5000);
 if (rv != 0) {
  mpt_vol_prt(mpt, mpt_vol,
      "mpt_refresh_raid_vol: Failed to read RAID Vol Page(%d)\n",
      ioc_vol->VolumePageNumber);
  return;
 }
 mpt2host_config_page_raid_vol_0(vol_pg);

 mpt_vol->flags |= MPT_RVF_ACTIVE;


 for (i = 0; i < vol_pg->NumPhysDisks; i++) {
  struct mpt_raid_disk *mpt_disk;
  mpt_disk = mpt->raid_disks + vol_pg->PhysDisk[i].PhysDiskNum;
  mpt_disk->volume = mpt_vol;
  mpt_disk->member_number = vol_pg->PhysDisk[i].PhysDiskMap;
  if (vol_pg->VolumeType == MPI_RAID_VOL_TYPE_IM) {
   mpt_disk->member_number--;
  }
 }

 if ((vol_pg->VolumeStatus.Flags
    & MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS) == 0)
  return;

 req = mpt_get_request(mpt, TRUE);
 if (req == ((void*)0)) {
  mpt_vol_prt(mpt, mpt_vol,
      "mpt_refresh_raid_vol: Get request failed!\n");
  return;
 }
 rv = mpt_issue_raid_req(mpt, mpt_vol, ((void*)0), req,
     MPI_RAID_ACTION_INDICATOR_STRUCT, 0, 0, 0, FALSE, TRUE);
 if (rv == ETIMEDOUT) {
  mpt_vol_prt(mpt, mpt_vol,
      "mpt_refresh_raid_vol: Progress Indicator fetch timeout\n");
  mpt_free_request(mpt, req);
  return;
 }

 ar = REQ_TO_RAID_ACTION_RESULT(req);
 if (rv == 0
  && ar->action_status == MPI_RAID_ACTION_ASTATUS_SUCCESS
  && REQ_IOCSTATUS(req) == MPI_IOCSTATUS_SUCCESS) {
  memcpy(&mpt_vol->sync_progress,
         &ar->action_data.indicator_struct,
         sizeof(mpt_vol->sync_progress));
  mpt2host_mpi_raid_vol_indicator(&mpt_vol->sync_progress);
 } else {
  mpt_vol_prt(mpt, mpt_vol,
      "mpt_refresh_raid_vol: Progress indicator fetch failed!\n");
 }
 mpt_free_request(mpt, req);
}

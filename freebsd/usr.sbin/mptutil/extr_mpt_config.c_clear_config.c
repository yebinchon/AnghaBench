
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int VolumeID; int VolumeBus; } ;
struct TYPE_11__ {int NumActiveVolumes; int NumHotSpares; int NumPhysDisks; TYPE_2__* PhysDisk; TYPE_1__* HotSpare; TYPE_5__* RaidVolume; } ;
struct TYPE_10__ {int PhysDiskNum; } ;
struct TYPE_9__ {int PhysDiskNum; } ;
typedef TYPE_1__ IOC_5_HOT_SPARE ;
typedef TYPE_2__ IOC_3_PHYS_DISK ;
typedef TYPE_3__ CONFIG_PAGE_IOC_5 ;
typedef TYPE_3__ CONFIG_PAGE_IOC_3 ;
typedef TYPE_5__ CONFIG_PAGE_IOC_2_RAID_VOL ;
typedef TYPE_3__ CONFIG_PAGE_IOC_2 ;


 int EBUSY ;
 int MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS ;
 int MPI_RAID_ACTION_ADATA_ZERO_LBA0 ;
 int MPI_RAID_ACTION_DELETE_VOLUME ;
 int close (int) ;
 int errno ;
 int free (TYPE_3__*) ;
 int getchar () ;
 scalar_t__ mpt_delete_physdisk (int,int ) ;
 scalar_t__ mpt_lock_volume (int ,int ) ;
 int mpt_open (int) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int,int *,int ,int *,int *,int ,int *,int *,int ) ;
 TYPE_3__* mpt_read_ioc_page (int,int,int *) ;
 int mpt_rescan_bus (int,int) ;
 int mpt_unit ;
 int mpt_volume_name (int ,int ) ;
 int printf (char*,...) ;
 int warn (char*,...) ;
 int warnc (int,char*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
clear_config(int ac, char **av)
{
 CONFIG_PAGE_IOC_2 *ioc2;
 CONFIG_PAGE_IOC_2_RAID_VOL *vol;
 CONFIG_PAGE_IOC_3 *ioc3;
 IOC_3_PHYS_DISK *disk;
 CONFIG_PAGE_IOC_5 *ioc5;
 IOC_5_HOT_SPARE *spare;
 int ch, error, fd, i;

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }

 ioc2 = mpt_read_ioc_page(fd, 2, ((void*)0));
 if (ioc2 == ((void*)0)) {
  error = errno;
  warn("Failed to fetch volume list");
  close(fd);
  return (error);
 }


 vol = ioc2->RaidVolume;
 for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
  if (mpt_lock_volume(vol->VolumeBus, vol->VolumeID) < 0) {
   warnx("Volume %s is busy and cannot be deleted",
       mpt_volume_name(vol->VolumeBus, vol->VolumeID));
   free(ioc2);
   close(fd);
   return (EBUSY);
  }
 }

 printf(
     "Are you sure you wish to clear the configuration on mpt%u? [y/N] ",
     mpt_unit);
 ch = getchar();
 if (ch != 'y' && ch != 'Y') {
  printf("\nAborting\n");
  free(ioc2);
  close(fd);
  return (0);
 }


 vol = ioc2->RaidVolume;
 for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
  error = mpt_raid_action(fd, MPI_RAID_ACTION_DELETE_VOLUME,
      vol->VolumeBus, vol->VolumeID, 0,
      MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS |
      MPI_RAID_ACTION_ADATA_ZERO_LBA0, ((void*)0), 0, ((void*)0), ((void*)0), 0,
      ((void*)0), ((void*)0), 0);
  if (error)
   warnc(error, "Failed to delete volume %s",
       mpt_volume_name(vol->VolumeBus, vol->VolumeID));
 }
 free(ioc2);


 ioc5 = mpt_read_ioc_page(fd, 5, ((void*)0));
 if (ioc5 == ((void*)0))
  warn("Failed to fetch spare list");
 else {
  spare = ioc5->HotSpare;
  for (i = 0; i < ioc5->NumHotSpares; spare++, i++)
   if (mpt_delete_physdisk(fd, spare->PhysDiskNum) < 0)
    warn("Failed to delete physical disk %d",
        spare->PhysDiskNum);
  free(ioc5);
 }


 ioc3 = mpt_read_ioc_page(fd, 3, ((void*)0));
 if (ioc3 == ((void*)0))
  warn("Failed to fetch drive list");
 else {
  disk = ioc3->PhysDisk;
  for (i = 0; i < ioc3->NumPhysDisks; disk++, i++)
   if (mpt_delete_physdisk(fd, disk->PhysDiskNum) < 0)
    warn("Failed to delete physical disk %d",
        disk->PhysDiskNum);
  free(ioc3);
 }

 printf("mpt%d: Configuration cleared\n", mpt_unit);
 mpt_rescan_bus(-1, -1);
 close(fd);

 return (0);
}

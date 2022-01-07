
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int EINVAL ;
 int MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS ;
 int MPI_RAID_ACTION_ADATA_ZERO_LBA0 ;
 int MPI_RAID_ACTION_DELETE_VOLUME ;
 int close (int) ;
 int errno ;
 scalar_t__ mpt_lock_volume (int ,int ) ;
 int mpt_lookup_volume (int,char*,int *,int *) ;
 int mpt_open (int ) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int,int *,int ,int *,int *,int ,int *,int *,int ) ;
 int mpt_rescan_bus (int,int) ;
 int mpt_unit ;
 int warn (char*) ;
 int warnc (int,char*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
delete_volume(int ac, char **av)
{
 U8 VolumeBus, VolumeID;
 int error, fd;

 if (ac != 2) {
  warnx("delete: volume required");
  return (EINVAL);
 }

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }

 error = mpt_lookup_volume(fd, av[1], &VolumeBus, &VolumeID);
 if (error) {
  warnc(error, "Invalid volume %s", av[1]);
  close(fd);
  return (error);
 }

 if (mpt_lock_volume(VolumeBus, VolumeID) < 0) {
  close(fd);
  return (errno);
 }

 error = mpt_raid_action(fd, MPI_RAID_ACTION_DELETE_VOLUME, VolumeBus,
     VolumeID, 0, MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS |
     MPI_RAID_ACTION_ADATA_ZERO_LBA0, ((void*)0), 0, ((void*)0), ((void*)0), 0, ((void*)0),
     ((void*)0), 0);
 if (error) {
  warnc(error, "Failed to delete volume");
  close(fd);
  return (error);
 }

 mpt_rescan_bus(-1, -1);
 close(fd);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int HotSparePool; } ;
struct mpt_standalone_disk {TYPE_1__ PhysDiskSettings; } ;
struct mpt_drive_list {int dummy; } ;
typedef int U8 ;
typedef int U32 ;
typedef struct mpt_standalone_disk CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 int EINVAL ;
 int MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS ;
 int MPI_RAID_HOT_SPARE_POOL_0 ;
 int close (int) ;
 int errno ;
 int find_volume_spare_pool (int,char*,int*) ;
 int free (struct mpt_standalone_disk*) ;
 scalar_t__ mpt_create_physdisk (int,struct mpt_standalone_disk*,int *) ;
 int mpt_fetch_disks (int,int*,struct mpt_standalone_disk**) ;
 int mpt_free_pd_list (struct mpt_drive_list*) ;
 scalar_t__ mpt_lock_physdisk (struct mpt_standalone_disk*) ;
 int mpt_lookup_drive (struct mpt_drive_list*,char*,int *) ;
 scalar_t__ mpt_lookup_standalone_disk (char*,struct mpt_standalone_disk*,int,int*) ;
 int mpt_open (int ) ;
 struct mpt_standalone_disk* mpt_pd_info (int,int ,int *) ;
 struct mpt_drive_list* mpt_pd_list (int) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int ,int *,int ,int *,int *,int ,int *,int *,int ) ;
 int mpt_unit ;
 int warn (char*,...) ;
 int warnc (int,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
add_spare(int ac, char **av)
{
 CONFIG_PAGE_RAID_PHYS_DISK_0 *info;
 struct mpt_standalone_disk *sdisks;
 struct mpt_drive_list *list;
 U8 PhysDiskNum;
 int error, fd, i, nsdisks, pool;

 if (ac < 2) {
  warnx("add spare: drive required");
  return (EINVAL);
 }
 if (ac > 3) {
  warnx("add spare: extra arguments");
  return (EINVAL);
 }

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }

 if (ac == 3) {
  error = find_volume_spare_pool(fd, av[2], &pool);
  if (error) {
   close(fd);
   return (error);
  }
 } else
  pool = MPI_RAID_HOT_SPARE_POOL_0;

 list = mpt_pd_list(fd);
 if (list == ((void*)0))
  return (errno);

 error = mpt_lookup_drive(list, av[1], &PhysDiskNum);
 if (error) {
  error = mpt_fetch_disks(fd, &nsdisks, &sdisks);
  if (error != 0) {
   warn("Failed to fetch standalone disk list");
   mpt_free_pd_list(list);
   close(fd);
   return (error);
  }

  if (mpt_lookup_standalone_disk(av[1], sdisks, nsdisks, &i) <
      0) {
   error = errno;
   warn("Unable to lookup drive %s", av[1]);
   mpt_free_pd_list(list);
   close(fd);
   return (error);
  }

  if (mpt_lock_physdisk(&sdisks[i]) < 0) {
   mpt_free_pd_list(list);
   close(fd);
   return (errno);
  }

  if (mpt_create_physdisk(fd, &sdisks[i], &PhysDiskNum) < 0) {
   error = errno;
   warn("Failed to create physical disk page");
   mpt_free_pd_list(list);
   close(fd);
   return (error);
  }
  free(sdisks);
 }
 mpt_free_pd_list(list);

 info = mpt_pd_info(fd, PhysDiskNum, ((void*)0));
 if (info == ((void*)0)) {
  error = errno;
  warn("Failed to fetch drive info");
  close(fd);
  return (error);
 }

 info->PhysDiskSettings.HotSparePool = pool;
 error = mpt_raid_action(fd, MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS, 0,
     0, PhysDiskNum, *(U32 *)&info->PhysDiskSettings, ((void*)0), 0, ((void*)0),
     ((void*)0), 0, ((void*)0), ((void*)0), 0);
 if (error) {
  warnc(error, "Failed to assign spare");
  close(fd);
  return (error);
 }

 free(info);
 close(fd);

 return (0);
}

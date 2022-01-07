
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpt_drive_list {int dummy; } ;
typedef scalar_t__ U8 ;
struct TYPE_5__ {scalar_t__ State; } ;
struct TYPE_6__ {TYPE_1__ PhysDiskStatus; } ;
typedef TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 int EINVAL ;
 int close (int) ;
 int errno ;
 int free (TYPE_2__*) ;
 int mpt_free_pd_list (struct mpt_drive_list*) ;
 scalar_t__ mpt_lookup_drive (struct mpt_drive_list*,char*,scalar_t__*) ;
 int mpt_open (int ) ;
 TYPE_2__* mpt_pd_info (int,scalar_t__,int *) ;
 struct mpt_drive_list* mpt_pd_list (int) ;
 int mpt_raid_action (int,scalar_t__,int ,int ,scalar_t__,int ,int *,int ,int *,int *,int ,int *,int *,int ) ;
 int mpt_unit ;
 int warn (char*,...) ;
 int warnc (int,char*,scalar_t__,char const*) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static int
drive_set_state(char *drive, U8 Action, U8 State, const char *name)
{
 CONFIG_PAGE_RAID_PHYS_DISK_0 *info;
 struct mpt_drive_list *list;
 U8 PhysDiskNum;
 int error, fd;

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }

 list = mpt_pd_list(fd);
 if (list == ((void*)0)) {
  close(fd);
  return (errno);
 }

 if (mpt_lookup_drive(list, drive, &PhysDiskNum) < 0) {
  error = errno;
  warn("Failed to find drive %s", drive);
  close(fd);
  return (error);
 }
 mpt_free_pd_list(list);


 info = mpt_pd_info(fd, PhysDiskNum, ((void*)0));
 if (info == ((void*)0)) {
  error = errno;
  warn("Failed to fetch info for drive %u", PhysDiskNum);
  close(fd);
  return (error);
 }


 if (info->PhysDiskStatus.State == State) {
  warnx("Drive %u is already in the desired state", PhysDiskNum);
  free(info);
  close(fd);
  return (EINVAL);
 }

 error = mpt_raid_action(fd, Action, 0, 0, PhysDiskNum, 0, ((void*)0), 0, ((void*)0),
     ((void*)0), 0, ((void*)0), ((void*)0), 0);
 if (error) {
  warnc(error, "Failed to set drive %u to %s", PhysDiskNum, name);
  free(info);
  close(fd);
  return (error);
 }

 free(info);
 close(fd);

 return (0);
}

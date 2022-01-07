
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int active; int clear; int patrol; int rbld; } ;
struct mfi_pd_info {TYPE_1__ prog_info; } ;


 int EINVAL ;
 int MFI_DNAME_DEVICE_ID ;
 int MFI_DNAME_HONOR_OPTS ;
 int MFI_PD_PROGRESS_CLEAR ;
 int MFI_PD_PROGRESS_PATROL ;
 int MFI_PD_PROGRESS_REBUILD ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int mfi_display_progress (char*,int *) ;
 char* mfi_drive_name (int *,int ,int) ;
 int mfi_lookup_drive (int,char*,int *) ;
 int mfi_open (int ,int ) ;
 scalar_t__ mfi_pd_get_info (int,int ,struct mfi_pd_info*,int *) ;
 int mfi_unit ;
 int printf (char*,char*) ;
 int warn (char*,...) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
drive_progress(int ac, char **av)
{
 struct mfi_pd_info info;
 uint16_t device_id;
 int error, fd;

 if (ac != 2) {
  warnx("drive progress: %s", ac > 2 ? "extra arguments" :
      "drive required");
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 error = mfi_lookup_drive(fd, av[1], &device_id);
 if (error) {
  close(fd);
  return (error);
 }


 if (mfi_pd_get_info(fd, device_id, &info, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to fetch info for drive %u", device_id);
  close(fd);
  return (error);
 }
 close(fd);


 if (info.prog_info.active & MFI_PD_PROGRESS_REBUILD)
  mfi_display_progress("Rebuild", &info.prog_info.rbld);
 if (info.prog_info.active & MFI_PD_PROGRESS_PATROL)
  mfi_display_progress("Patrol Read", &info.prog_info.patrol);
 if (info.prog_info.active & MFI_PD_PROGRESS_CLEAR)
  mfi_display_progress("Clear", &info.prog_info.clear);
 if ((info.prog_info.active & (MFI_PD_PROGRESS_REBUILD |
     MFI_PD_PROGRESS_PATROL | MFI_PD_PROGRESS_CLEAR)) == 0)
  printf("No activity in progress for drive %s.\n",
  mfi_drive_name(((void*)0), device_id,
      MFI_DNAME_DEVICE_ID|MFI_DNAME_HONOR_OPTS));

 return (0);
}

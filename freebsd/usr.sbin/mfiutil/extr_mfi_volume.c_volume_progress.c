
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int active; int recon; int fgi; int bgi; int cc; } ;
struct mfi_ld_info {TYPE_1__ progress; } ;


 int EINVAL ;
 int MFI_LD_PROGRESS_BGI ;
 int MFI_LD_PROGRESS_CC ;
 int MFI_LD_PROGRESS_FGI ;
 int MFI_LD_PROGRESS_RECON ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int mfi_display_progress (char*,int *) ;
 scalar_t__ mfi_ld_get_info (int,int ,struct mfi_ld_info*,int *) ;
 scalar_t__ mfi_lookup_volume (int,char*,int *) ;
 int mfi_open (int ,int ) ;
 int mfi_unit ;
 char* mfi_volume_name (int,int ) ;
 int printf (char*,char*) ;
 int warn (char*,...) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
volume_progress(int ac, char **av)
{
 struct mfi_ld_info info;
 int error, fd;
 uint8_t target_id;

 if (ac != 2) {
  warnx("volume progress: %s", ac > 2 ? "extra arguments" :
      "volume required");
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDONLY);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (mfi_lookup_volume(fd, av[1], &target_id) < 0) {
  error = errno;
  warn("Invalid volume: %s", av[1]);
  close(fd);
  return (error);
 }


 if (mfi_ld_get_info(fd, target_id, &info, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to fetch info for volume %s",
      mfi_volume_name(fd, target_id));
  close(fd);
  return (error);
 }


 if (info.progress.active & MFI_LD_PROGRESS_CC)
  mfi_display_progress("Consistency Check", &info.progress.cc);
 if (info.progress.active & MFI_LD_PROGRESS_BGI)
  mfi_display_progress("Background Init", &info.progress.bgi);
 if (info.progress.active & MFI_LD_PROGRESS_FGI)
  mfi_display_progress("Foreground Init", &info.progress.fgi);
 if (info.progress.active & MFI_LD_PROGRESS_RECON)
  mfi_display_progress("Reconstruction", &info.progress.recon);
 if ((info.progress.active & (MFI_LD_PROGRESS_CC | MFI_LD_PROGRESS_BGI |
     MFI_LD_PROGRESS_FGI | MFI_LD_PROGRESS_RECON)) == 0)
  printf("No activity in progress for volume %s.\n",
      mfi_volume_name(fd, target_id));
 close(fd);

 return (0);
}

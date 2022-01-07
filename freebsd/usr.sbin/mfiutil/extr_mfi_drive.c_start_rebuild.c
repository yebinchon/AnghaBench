
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char* uint16_t ;
struct mfi_pd_info {scalar_t__ fw_state; int ref; } ;


 int EINVAL ;
 int MFI_DCMD_PD_REBUILD_START ;
 scalar_t__ MFI_PD_STATE_REBUILD ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int mbox_store_pdref (int *,int *) ;
 scalar_t__ mfi_dcmd_command (int,int ,int *,int ,int *,int,int *) ;
 int mfi_lookup_drive (int,char*,char**) ;
 int mfi_open (int ,int ) ;
 scalar_t__ mfi_pd_get_info (int,char*,struct mfi_pd_info*,int *) ;
 int mfi_unit ;
 int warn (char*,...) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
start_rebuild(int ac, char **av)
{
 struct mfi_pd_info info;
 uint16_t device_id;
 uint8_t mbox[4];
 int error, fd;

 if (ac != 2) {
  warnx("start rebuild: %s", ac > 2 ? "extra arguments" :
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


 if (info.fw_state != MFI_PD_STATE_REBUILD) {
  warnx("Drive %d is not in the REBUILD state", device_id);
  close(fd);
  return (EINVAL);
 }


 mbox_store_pdref(&mbox[0], &info.ref);
 if (mfi_dcmd_command(fd, MFI_DCMD_PD_REBUILD_START, ((void*)0), 0, mbox, 4,
     ((void*)0)) < 0) {
  error = errno;
  warn("Failed to start rebuild on drive %u", device_id);
  close(fd);
  return (error);
 }
 close(fd);

 return (0);
}

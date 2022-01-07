
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct mfi_pd_info {int fw_state; int ref; } ;


 int EINVAL ;
 int MFI_DCMD_PD_STATE_SET ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int mbox_store_pdref (int*,int *) ;
 scalar_t__ mfi_dcmd_command (int,int ,int *,int ,int*,int,int *) ;
 int mfi_lookup_drive (int,char*,int*) ;
 int mfi_open (int ,int ) ;
 scalar_t__ mfi_pd_get_info (int,int,struct mfi_pd_info*,int *) ;
 int mfi_pdstate (int) ;
 int mfi_unit ;
 int warn (char*,...) ;
 int warnx (char*,int) ;

__attribute__((used)) static int
drive_set_state(char *drive, uint16_t new_state)
{
 struct mfi_pd_info info;
 uint16_t device_id;
 uint8_t mbox[6];
 int error, fd;

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 error = mfi_lookup_drive(fd, drive, &device_id);
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


 if (info.fw_state == new_state) {
  warnx("Drive %u is already in the desired state", device_id);
  close(fd);
  return (EINVAL);
 }

 mbox_store_pdref(&mbox[0], &info.ref);
 mbox[4] = new_state & 0xff;
 mbox[5] = new_state >> 8;
 if (mfi_dcmd_command(fd, MFI_DCMD_PD_STATE_SET, ((void*)0), 0, mbox, 6,
     ((void*)0)) < 0) {
  error = errno;
  warn("Failed to set drive %u to %s", device_id,
      mfi_pdstate(new_state));
  close(fd);
  return (error);
 }

 close(fd);

 return (0);
}

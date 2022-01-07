
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int ld; } ;
struct TYPE_4__ {TYPE_1__ properties; } ;
struct mfi_ld_info {TYPE_2__ ld_config; } ;
typedef int mbox ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int MFI_DCMD_LD_DELETE ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int mbox_store_ldref (int *,int *) ;
 scalar_t__ mfi_dcmd_command (int,int ,int *,int ,int *,int,int *) ;
 scalar_t__ mfi_ld_get_info (int,int ,struct mfi_ld_info*,int *) ;
 scalar_t__ mfi_lookup_volume (int,char*,int *) ;
 int mfi_open (int ,int ) ;
 int mfi_reconfig_supported () ;
 int mfi_unit ;
 scalar_t__ mfi_volume_busy (int,int ) ;
 int mfi_volume_name (int,int ) ;
 int remove_spare (int,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
delete_volume(int ac, char **av)
{
 struct mfi_ld_info info;
 int error, fd;
 uint8_t target_id, mbox[4];





 if (ac > 1) {
  if (strcmp(av[1], "volume") == 0) {
   av++;
   ac--;
  } else if (strcmp(av[1], "spare") == 0) {
   av++;
   ac--;
   return (remove_spare(ac, av));
  }
 }

 if (ac != 2) {
  warnx("delete volume: volume required");
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (!mfi_reconfig_supported()) {
  warnx("The current mfi(4) driver does not support "
      "configuration changes.");
  close(fd);
  return (EOPNOTSUPP);
 }

 if (mfi_lookup_volume(fd, av[1], &target_id) < 0) {
  error = errno;
  warn("Invalid volume %s", av[1]);
  close(fd);
  return (error);
 }

 if (mfi_ld_get_info(fd, target_id, &info, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to get info for volume %d", target_id);
  close(fd);
  return (error);
 }

 if (mfi_volume_busy(fd, target_id)) {
  warnx("Volume %s is busy and cannot be deleted",
      mfi_volume_name(fd, target_id));
  close(fd);
  return (EBUSY);
 }

 mbox_store_ldref(mbox, &info.ld_config.properties.ld);
 if (mfi_dcmd_command(fd, MFI_DCMD_LD_DELETE, ((void*)0), 0, mbox,
     sizeof(mbox), ((void*)0)) < 0) {
  error = errno;
  warn("Failed to delete volume");
  close(fd);
  return (error);
 }

 close(fd);

 return (0);
}

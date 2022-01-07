
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_foreign_scan_info {int count; } ;
typedef int mbox ;
typedef int info ;


 int EINVAL ;
 int MFI_DCMD_CFG_FOREIGN_IMPORT ;
 int MFI_DCMD_CFG_FOREIGN_SCAN ;
 int O_RDWR ;
 int atoi (char*) ;
 int bzero (int*,int) ;
 int close (int) ;
 int errno ;
 int getchar () ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_foreign_scan_info*,int,int*,int,int *) ;
 int mfi_open (int,int ) ;
 int mfi_unit ;
 int printf (char*,...) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
foreign_import(int ac, char **av)
{
 struct mfi_foreign_scan_info info;
 int ch, error, fd;
 uint8_t cfgidx;
 uint8_t mbox[4];

 if (ac > 2) {
  warnx("foreign preview: extra arguments");
                return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (mfi_dcmd_command(fd, MFI_DCMD_CFG_FOREIGN_SCAN, &info,
     sizeof(info), ((void*)0), 0, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to scan foreign configuration");
  close(fd);
  return (error);
 }

 if (info.count == 0) {
  warnx("foreign import: no foreign configs found");
  close(fd);
  return (EINVAL);
 }

 if (ac == 1) {
  cfgidx = 0xff;
  printf("Are you sure you wish to import ALL foreign "
         "configurations on mfi%u? [y/N] ", mfi_unit);
 } else {






  cfgidx = atoi(av[1]);
  if (cfgidx >= info.count) {
   warnx("Invalid foreign config %d specified max is %d",
         cfgidx, info.count - 1);
   close(fd);
   return (EINVAL);
  }
  printf("Are you sure you wish to import the foreign "
         "configuration %d on mfi%u? [y/N] ", cfgidx, mfi_unit);
 }

 ch = getchar();
 if (ch != 'y' && ch != 'Y') {
  printf("\nAborting\n");
  close(fd);
  return (0);
 }

 bzero(mbox, sizeof(mbox));
 mbox[0] = cfgidx;
 if (mfi_dcmd_command(fd, MFI_DCMD_CFG_FOREIGN_IMPORT, ((void*)0), 0, mbox,
     sizeof(mbox), ((void*)0)) < 0) {
  error = errno;
  warn("Failed to import foreign configuration");
  close(fd);
  return (error);
 }

 if (ac == 1)
  printf("mfi%d: All foreign configurations imported\n",
         mfi_unit);
 else
  printf("mfi%d: Foreign configuration %d imported\n", mfi_unit,
         cfgidx);
 close(fd);
 return (0);
}

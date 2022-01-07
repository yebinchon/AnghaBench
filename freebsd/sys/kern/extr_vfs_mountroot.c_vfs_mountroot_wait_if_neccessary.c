
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int g_waitidle () ;
 int hz ;
 scalar_t__ parse_mount_dev_present (char const*) ;
 int pause (char*,int) ;
 int printf (char*,char const*) ;
 scalar_t__ root_mount_always_wait ;
 int root_mount_timeout ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strstr (char const*,char*) ;
 int vfs_mountroot_wait () ;

__attribute__((used)) static int
vfs_mountroot_wait_if_neccessary(const char *fs, const char *dev)
{
 int delay, timeout;






 if (strcmp(fs, "zfs") == 0 || strstr(fs, "nfs") != ((void*)0) ||
     dev[0] == '\0' || root_mount_always_wait != 0) {
  vfs_mountroot_wait();
  return (0);
 }






 g_waitidle();
 if (parse_mount_dev_present(dev))
  return (0);





 vfs_mountroot_wait();
 printf("mountroot: waiting for device %s...\n", dev);
 delay = hz / 10;
 timeout = root_mount_timeout * hz;
 do {
  pause("rmdev", delay);
  timeout -= delay;
 } while (timeout > 0 && !parse_mount_dev_present(dev));

 if (timeout <= 0)
  return (ENODEV);

 return (0);
}

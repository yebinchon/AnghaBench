
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

int
is_fs_bootable(const char *part_type, const char *fs)
{
 if (strcmp(fs, "freebsd-ufs") == 0 || strcmp(fs, "freebsd-zfs") == 0)
  return (1);
 return (0);
}

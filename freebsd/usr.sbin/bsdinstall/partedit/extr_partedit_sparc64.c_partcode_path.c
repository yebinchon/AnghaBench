
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

const char *
partcode_path(const char *part_type, const char *fs_type) {
 if (strcmp(part_type, "VTOC8") == 0) {
  if (strcmp(fs_type, "ufs") == 0) {
   return ("/boot/boot1");
  } else if (strcmp(fs_type, "zfs") == 0) {
   return ("/boot/zfsboot");
  }
 }
 return (((void*)0));
}

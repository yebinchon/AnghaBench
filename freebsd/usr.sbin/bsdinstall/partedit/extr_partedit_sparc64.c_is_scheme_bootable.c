
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

int
is_scheme_bootable(const char *part_type) {
 if (strcmp(part_type, "VTOC8") == 0)
  return (1);
 return (0);
}

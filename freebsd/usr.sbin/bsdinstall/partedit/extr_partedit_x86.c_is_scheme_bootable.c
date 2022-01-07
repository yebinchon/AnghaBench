
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char const* x86_bootmethod () ;

int
is_scheme_bootable(const char *part_type)
{

 if (strcmp(part_type, "GPT") == 0)
  return (1);
 if (strcmp(x86_bootmethod(), "BIOS") == 0) {
  if (strcmp(part_type, "BSD") == 0)
   return (1);
  if (strcmp(part_type, "MBR") == 0)
   return (1);
 }

 return (0);
}

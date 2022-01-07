
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char const* x86_bootmethod () ;

const char *
partcode_path(const char *part_type, const char *fs_type)
{

 if (strcmp(part_type, "GPT") == 0 && strcmp(x86_bootmethod(), "UEFI") != 0) {
  if (strcmp(fs_type, "zfs") == 0)
   return ("/boot/gptzfsboot");
  else
   return ("/boot/gptboot");
 }


 return (((void*)0));
}

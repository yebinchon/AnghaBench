
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char const* x86_bootmethod () ;

const char *
bootcode_path(const char *part_type)
{

 if (strcmp(x86_bootmethod(), "UEFI") == 0)
  return (((void*)0));

 if (strcmp(part_type, "GPT") == 0)
  return ("/boot/pmbr");
 if (strcmp(part_type, "MBR") == 0)
  return ("/boot/mbr");
 if (strcmp(part_type, "BSD") == 0)
  return ("/boot/boot");

 return (((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t EFI_BOOTPART_SIZE ;
 scalar_t__ strcmp (char const*,char*) ;
 char const* x86_bootmethod () ;

size_t
bootpart_size(const char *scheme)
{


 if (strcmp(scheme, "GPT") != 0)
  return (0);

 if (strcmp(x86_bootmethod(), "BIOS") == 0)
  return (512*1024);
 else
  return (EFI_BOOTPART_SIZE);

 return (0);
}

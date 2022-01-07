
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (int ,char*) ;
 int x86_bootmethod () ;

const char *
bootpart_type(const char *scheme, const char **mountpoint)
{

 if (strcmp(x86_bootmethod(), "UEFI") == 0)
  return ("efi");

 return ("freebsd-boot");
}

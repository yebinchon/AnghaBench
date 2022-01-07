
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFI_GLOBAL_GUID ;
 int asprintf (char**,char*,char*,int) ;
 scalar_t__ efi_del_variable (int ,char*) ;
 int err (int,char*) ;
 int errx (int,char*,int) ;
 int exit (int) ;
 int free (char*) ;
 int printf (char*,...) ;
 int remove_from_order (int) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
delete_bootvar(int bootnum)
{
 char *name;
 int defer = 0;






 if (bootnum < 0 || bootnum > 0xffff)
  errx(1, "Bad boot variable %#x", bootnum);
 asprintf(&name, "%s%04X", "Boot", bootnum);
 if (name == ((void*)0))
  err(1, "asprintf");
 printf("Removing boot variable '%s'\n", name);
 if (efi_del_variable(EFI_GLOBAL_GUID, name) < 0) {
  defer = 1;
  warn("cannot delete variable %s", name);
 }
 printf("Removing 0x%x from BootOrder\n", bootnum);
 remove_from_order(bootnum);
 free(name);
 if (defer)
  exit(defer);
}

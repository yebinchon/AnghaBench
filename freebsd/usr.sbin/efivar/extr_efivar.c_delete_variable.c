
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int breakdown_name (char*,int *,char**) ;
 scalar_t__ efi_del_variable (int ,char*) ;
 int err (int,char*) ;

__attribute__((used)) static void
delete_variable(char *name)
{
 char *vname;
 efi_guid_t guid;

 breakdown_name(name, &guid, &vname);
 if (efi_del_variable(guid, vname) < 0)
  err(1, "efi_del_variable");
}

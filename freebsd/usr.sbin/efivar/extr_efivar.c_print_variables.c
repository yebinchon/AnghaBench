
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int efi_get_next_variable_name (int **,char**) ;
 int err (int,char*) ;
 int print_var (int *,char*) ;

__attribute__((used)) static void
print_variables(void)
{
 int rv;
 char *name = ((void*)0);
 efi_guid_t *guid = ((void*)0);

 while ((rv = efi_get_next_variable_name(&guid, &name)) > 0)
  print_var(guid, name);

 if (rv < 0)
  err(1, "Error listing names");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int breakdown_name (char*,int *,char**) ;
 int print_var (int *,char*) ;

__attribute__((used)) static void
print_variable(char *name)
{
 char *vname;
 efi_guid_t guid;

 breakdown_name(name, &guid, &vname);
 print_var(&guid, vname);
}

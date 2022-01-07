
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int efi_guid_t ;


 int attrib ;
 int breakdown_name (char*,int *,char**) ;
 scalar_t__ efi_append_variable (int ,char*,int *,size_t,int ) ;
 int err (int,char*) ;
 int * get_value (char*,size_t*) ;

__attribute__((used)) static void
append_variable(char *name, char *val)
{
 char *vname;
 efi_guid_t guid;
 size_t datalen;
 uint8_t *data;

 breakdown_name(name, &guid, &vname);
 data = get_value(val, &datalen);
 if (efi_append_variable(guid, vname, data, datalen, attrib) < 0)
  err(1, "efi_append_variable");
}

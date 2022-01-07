
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int efi_guid_to_name (int *,char**) ;
 int efi_guid_to_str (int *,char**) ;
 scalar_t__ gflag ;

__attribute__((used)) static void
pretty_guid(efi_guid_t *guid, char **gname)
{
 char *pretty = ((void*)0);

 if (gflag)
  efi_guid_to_name(guid, &pretty);

 if (pretty == ((void*)0))
  efi_guid_to_str(guid, gname);
 else
  *gname = pretty;
}

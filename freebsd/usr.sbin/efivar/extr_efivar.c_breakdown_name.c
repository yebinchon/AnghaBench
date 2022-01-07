
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 scalar_t__ efi_name_to_guid (char*,int *) ;
 int errx (int,char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
breakdown_name(char *name, efi_guid_t *guid, char **vname)
{
 char *cp;

 cp = strrchr(name, '-');
 if (cp == ((void*)0))
  errx(1, "Invalid name: %s", name);
 *vname = cp + 1;
 *cp = '\0';
 if (efi_name_to_guid(name, guid) < 0)
  errx(1, "Invalid guid %s", name);
}

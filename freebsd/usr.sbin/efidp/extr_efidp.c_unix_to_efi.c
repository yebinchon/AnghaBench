
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * efidp ;
typedef int efi ;
typedef int buffer ;


 int MAXSIZE ;
 scalar_t__ efidp_format_device_path (char*,int,int *,int ) ;
 int efidp_size (int *) ;
 int efivar_unix_path_to_device_path (char*,int **) ;
 int errno ;
 scalar_t__ fgets (char*,int,int ) ;
 int free (int *) ;
 int printf (char*,char*) ;
 int stdin ;
 char* trim (char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
unix_to_efi(void)
{
 char buffer[MAXSIZE];
 char efi[MAXSIZE];
 efidp dp;
 char *walker;
 int rv;

 dp = ((void*)0);
 while (fgets(buffer, sizeof(buffer), stdin)) {
  walker= trim(buffer);
  free(dp);
  dp = ((void*)0);
  rv = efivar_unix_path_to_device_path(walker, &dp);
  if (rv != 0 || dp == ((void*)0)) {
   errno = rv;
   warn("Can't convert '%s' to efi", walker);
   continue;
  }
  if (efidp_format_device_path(efi, sizeof(efi),
      dp, efidp_size(dp)) < 0) {
   warnx("Can't format dp for '%s'", walker);
   continue;
  }
  printf("%s\n", efi);
 }
 free(dp);
}

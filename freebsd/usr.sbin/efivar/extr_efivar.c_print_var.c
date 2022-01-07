
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int efi_guid_t ;


 scalar_t__ Aflag ;
 int Nflag ;
 int O_RDONLY ;
 int asciidump (int *,size_t) ;
 scalar_t__ bflag ;
 int bindump (int *,size_t) ;
 int close (int) ;
 int devpath_dump (int *,size_t) ;
 scalar_t__ dflag ;
 int efi_get_variable (int ,char*,int **,size_t*,int *) ;
 int efi_print_load_option (int *,size_t,scalar_t__,scalar_t__,scalar_t__) ;
 int err (int,char*,...) ;
 int free (char*) ;
 scalar_t__ fromfile ;
 int hexdump (int *,size_t) ;
 scalar_t__ load_opt_flag ;
 int * malloc (int) ;
 int open (scalar_t__,int ) ;
 scalar_t__ pflag ;
 int pretty_guid (int *,char**) ;
 int printf (char*,...) ;
 size_t read (int,int *,int) ;
 scalar_t__ uflag ;
 int utf8dump (int *,size_t) ;

__attribute__((used)) static void
print_var(efi_guid_t *guid, char *name)
{
 uint32_t att;
 uint8_t *data;
 size_t datalen;
 char *gname = ((void*)0);
 int rv;

 if (guid)
  pretty_guid(guid, &gname);
 if (pflag || fromfile) {
  if (fromfile) {
   int fd;

   fd = open(fromfile, O_RDONLY);
   if (fd < 0)
    err(1, "open %s", fromfile);
   data = malloc(64 * 1024);
   if (data == ((void*)0))
    err(1, "malloc");
   datalen = read(fd, data, 64 * 1024);
   if (datalen <= 0)
    err(1, "read");
   close(fd);
  } else {
   rv = efi_get_variable(*guid, name, &data, &datalen, &att);
   if (rv < 0)
    err(1, "fetching %s-%s", gname, name);
  }


  if (!Nflag)
   printf("%s-%s\n", gname, name);
  if (load_opt_flag)
   efi_print_load_option(data, datalen, Aflag, bflag, uflag);
  else if (Aflag)
   asciidump(data, datalen);
  else if (uflag)
   utf8dump(data, datalen);
  else if (bflag)
   bindump(data, datalen);
  else if (dflag)
   devpath_dump(data, datalen);
  else
   hexdump(data, datalen);
 } else {
  printf("%s-%s", gname, name);
 }
 free(gname);
 if (!Nflag)
  printf("\n");
}

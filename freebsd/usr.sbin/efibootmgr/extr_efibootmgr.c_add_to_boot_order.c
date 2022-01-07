
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int EFI_GLOBAL_GUID ;
 scalar_t__ ENOENT ;
 scalar_t__ efi_get_variable (int ,char*,int **,size_t*,int *) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (int *) ;
 int le16enc (int *,int ) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 scalar_t__ set_bootvar (char*,int *,size_t) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void
add_to_boot_order(char *bootvar)
{
 size_t size;
 uint32_t attrs;
 uint16_t val;
 uint8_t *data, *new;

 val = strtoul(&bootvar[4], ((void*)0), 16);

 if (efi_get_variable(EFI_GLOBAL_GUID, "BootOrder", &data, &size, &attrs) < 0) {
  if (errno == ENOENT) {
   size = 0;
   data = ((void*)0);
  } else
   err(1, "efi_get_variable BootOrder");
 }






 size += sizeof(uint16_t);
 new = malloc(size);
 if (!new)
  err(1, "malloc");

 le16enc(new, val);
 if (size > sizeof(uint16_t))
  memcpy(new + sizeof(uint16_t), data, size - sizeof(uint16_t));

 if (set_bootvar("BootOrder", new, size) < 0)
  err(1, "set_bootvar");
 free(new);
}

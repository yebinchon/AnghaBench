
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int EFI_GLOBAL_GUID ;
 scalar_t__ efi_get_variable (int ,char*,int **,size_t*,int *) ;
 int err (int,char*) ;
 int free (int *) ;
 scalar_t__ le16dec (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ set_bootvar (char*,int *,size_t) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static void
remove_from_order(uint16_t bootnum)
{
 uint32_t attrs;
 size_t size, i, j;
 uint8_t *new, *data;

 if (efi_get_variable(EFI_GLOBAL_GUID, "BootOrder", &data, &size, &attrs) < 0)
  return;

 new = malloc(size);
 if (new == ((void*)0))
  err(1, "malloc");

 for (j = i = 0; i < size; i += sizeof(uint16_t)) {
  if (le16dec(data + i) == bootnum)
   continue;
  memcpy(new + j, data + i, sizeof(uint16_t));
  j += sizeof(uint16_t);
 }
 if (i == j)
  warnx("Boot variable %04x not in BootOrder", bootnum);
 else if (set_bootvar("BootOrder", new, j) < 0)
  err(1, "Unable to update BootOrder with new value");
 free(new);
}

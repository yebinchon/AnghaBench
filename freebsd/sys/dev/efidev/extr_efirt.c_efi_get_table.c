
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct uuid {int dummy; } ;
struct efi_cfgtbl {int ct_data; int ct_uuid; } ;
struct TYPE_2__ {int st_entries; } ;


 int ENOENT ;
 int ENXIO ;
 int bcmp (int *,struct uuid*,int) ;
 struct efi_cfgtbl* efi_cfgtbl ;
 scalar_t__ efi_phys_to_kva (int ) ;
 TYPE_1__* efi_systbl ;

int
efi_get_table(struct uuid *uuid, void **ptr)
{
 struct efi_cfgtbl *ct;
 u_long count;

 if (efi_cfgtbl == ((void*)0) || efi_systbl == ((void*)0))
  return (ENXIO);
 count = efi_systbl->st_entries;
 ct = efi_cfgtbl;
 while (count--) {
  if (!bcmp(&ct->ct_uuid, uuid, sizeof(*uuid))) {
   *ptr = (void *)efi_phys_to_kva(ct->ct_data);
   return (0);
  }
  ct++;
 }
 return (ENOENT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ th_sig; } ;
struct efi_systbl {scalar_t__ st_cfgtbl; scalar_t__ st_rt; TYPE_1__ st_hdr; } ;
struct efi_rt {scalar_t__ rt_gettime; } ;
struct efi_md {int dummy; } ;
struct efi_map_header {int descriptor_size; int memory_size; } ;
struct efi_cfgtbl {int dummy; } ;
typedef int * caddr_t ;


 scalar_t__ EFI_SYSTBL_SIG ;
 int ENOMEM ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,scalar_t__) ;
 int MODINFOMD_EFI_MAP ;
 int MODINFO_METADATA ;
 int MTX_DEF ;
 scalar_t__ SHUTDOWN_PRI_LAST ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 scalar_t__ bootverbose ;
 struct efi_cfgtbl* efi_cfgtbl ;
 int efi_create_1t1_map (struct efi_md*,int,int) ;
 int efi_destroy_1t1_map () ;
 int efi_is_in_map (struct efi_md*,int,int,int ) ;
 int efi_lock ;
 scalar_t__ efi_phys_to_kva (uintptr_t) ;
 struct efi_rt* efi_runtime ;
 int efi_shutdown_final ;
 int efi_shutdown_tag ;
 struct efi_systbl* efi_systbl ;
 scalar_t__ efi_systbl_phys ;
 int mtx_init (int *,char*,int *,int ) ;
 int * preload_search_by_type (char*) ;
 scalar_t__ preload_search_info (int *,int) ;
 int printf (char*) ;
 int shutdown_final ;

__attribute__((used)) static int
efi_init(void)
{
 struct efi_map_header *efihdr;
 struct efi_md *map;
 struct efi_rt *rtdm;
 caddr_t kmdp;
 size_t efisz;
 int ndesc, rt_disabled;

 rt_disabled = 0;
 TUNABLE_INT_FETCH("efi.rt.disabled", &rt_disabled);
 if (rt_disabled == 1)
  return (0);
 mtx_init(&efi_lock, "efi", ((void*)0), MTX_DEF);

 if (efi_systbl_phys == 0) {
  if (bootverbose)
   printf("EFI systbl not available\n");
  return (0);
 }

 efi_systbl = (struct efi_systbl *)efi_phys_to_kva(efi_systbl_phys);
 if (efi_systbl == ((void*)0) || efi_systbl->st_hdr.th_sig != EFI_SYSTBL_SIG) {
  efi_systbl = ((void*)0);
  if (bootverbose)
   printf("EFI systbl signature invalid\n");
  return (0);
 }
 efi_cfgtbl = (efi_systbl->st_cfgtbl == 0) ? ((void*)0) :
     (struct efi_cfgtbl *)efi_systbl->st_cfgtbl;
 if (efi_cfgtbl == ((void*)0)) {
  if (bootverbose)
   printf("EFI config table is not present\n");
 }

 kmdp = preload_search_by_type("elf kernel");
 if (kmdp == ((void*)0))
  kmdp = preload_search_by_type("elf64 kernel");
 efihdr = (struct efi_map_header *)preload_search_info(kmdp,
     MODINFO_METADATA | MODINFOMD_EFI_MAP);
 if (efihdr == ((void*)0)) {
  if (bootverbose)
   printf("EFI map is not present\n");
  return (0);
 }
 efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
 map = (struct efi_md *)((uint8_t *)efihdr + efisz);
 if (efihdr->descriptor_size == 0)
  return (ENOMEM);

 ndesc = efihdr->memory_size / efihdr->descriptor_size;
 if (!efi_create_1t1_map(map, ndesc, efihdr->descriptor_size)) {
  if (bootverbose)
   printf("EFI cannot create runtime map\n");
  return (ENOMEM);
 }

 efi_runtime = (efi_systbl->st_rt == 0) ? ((void*)0) :
     (struct efi_rt *)efi_systbl->st_rt;
 if (efi_runtime == ((void*)0)) {
  if (bootverbose)
   printf("EFI runtime services table is not present\n");
  efi_destroy_1t1_map();
  return (ENXIO);
 }
 rtdm = (struct efi_rt *)efi_phys_to_kva((uintptr_t)efi_runtime);
 if (rtdm == ((void*)0) || !efi_is_in_map(map, ndesc, efihdr->descriptor_size,
     (vm_offset_t)rtdm->rt_gettime)) {
  if (bootverbose)
   printf(
    "EFI runtime services table has an invalid pointer\n");
  efi_runtime = ((void*)0);
  efi_destroy_1t1_map();
  return (ENXIO);
 }





 efi_shutdown_tag = EVENTHANDLER_REGISTER(shutdown_final,
     efi_shutdown_final, ((void*)0), SHUTDOWN_PRI_LAST - 1);

 return (0);
}

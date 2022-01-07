
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ u_long ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_int ;
typedef int u_char ;


 int KASSERT (int,char*) ;
 int MP_GDT ;
 scalar_t__ MPentry ;
 int PAGE_SIZE ;
 scalar_t__ bigJump ;
 scalar_t__ bootCodeSeg ;
 scalar_t__ bootDataSeg ;
 scalar_t__ bootMP ;
 int bootMP_size ;
 int boot_address ;
 int kernel_pmap ;
 int mp_gdtbase ;
 int pmap_invalidate_page (int ,int) ;
 int pmap_kenter (int,int) ;

__attribute__((used)) static void
install_ap_tramp(void)
{
 int x;
 int size = *(int *) ((u_long) & bootMP_size);
 vm_offset_t va = boot_address;
 u_char *src = (u_char *) ((u_long) bootMP);
 u_char *dst = (u_char *) va;
 u_int boot_base = (u_int) bootMP;
 u_int8_t *dst8;
 u_int16_t *dst16;
 u_int32_t *dst32;

 KASSERT (size <= PAGE_SIZE,
     ("'size' do not fit into PAGE_SIZE, as expected."));
 pmap_kenter(va, boot_address);
 pmap_invalidate_page (kernel_pmap, va);
 for (x = 0; x < size; ++x)
  *dst++ = *src++;
 dst = (u_char *) va;


 dst32 = (u_int32_t *) (dst + ((u_int) & mp_gdtbase - boot_base));
 *dst32 = boot_address + ((u_int) & MP_GDT - boot_base);


 dst32 = (u_int32_t *) (dst + ((u_int) bigJump - boot_base) + 1);
 *dst32 = (u_int)MPentry;


 dst16 = (u_int16_t *) (dst + ((u_int) bootCodeSeg - boot_base));
 dst8 = (u_int8_t *) (dst16 + 1);
 *dst16 = (u_int) boot_address & 0xffff;
 *dst8 = ((u_int) boot_address >> 16) & 0xff;


 dst16 = (u_int16_t *) (dst + ((u_int) bootDataSeg - boot_base));
 dst8 = (u_int8_t *) (dst16 + 1);
 *dst16 = (u_int) boot_address & 0xffff;
 *dst8 = ((u_int) boot_address >> 16) & 0xff;
}

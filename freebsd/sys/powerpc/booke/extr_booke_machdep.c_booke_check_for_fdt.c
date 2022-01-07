
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;


 int PAGE_SIZE ;
 scalar_t__ fdt_check_header (void*) ;
 int fdt_totalsize (void*) ;
 scalar_t__ pmap_early_io_map (int,int) ;
 int pmap_early_io_unmap (scalar_t__,int) ;

__attribute__((used)) static int
booke_check_for_fdt(uint32_t arg1, vm_offset_t *dtbp)
{
 void *ptr;
 int fdt_size;

 if (arg1 % 8 != 0)
  return (-1);

 ptr = (void *)pmap_early_io_map(arg1, PAGE_SIZE);
 if (fdt_check_header(ptr) != 0)
  return (-1);






 fdt_size = fdt_totalsize((void *)ptr);





 pmap_early_io_unmap((vm_offset_t)ptr, PAGE_SIZE);
 ptr = (void *)pmap_early_io_map(arg1, fdt_size);
 *dtbp = (vm_offset_t)ptr;

 return (0);
}

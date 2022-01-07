
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
typedef int uint32_t ;


 int TTM_PL_FLAG_WC ;
 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_COMBINING ;

vm_memattr_t
ttm_io_prot(uint32_t caching_flags)
{


 if (caching_flags & TTM_PL_FLAG_WC)
  return (VM_MEMATTR_WRITE_COMBINING);
 else




  return (VM_MEMATTR_UNCACHEABLE);



}

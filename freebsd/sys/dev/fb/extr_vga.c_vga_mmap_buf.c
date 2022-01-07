
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {int vi_flags; scalar_t__ vi_window; } ;
struct TYPE_5__ {scalar_t__ va_window_size; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int uintmax_t ;


 scalar_t__ PAGE_SIZE ;
 int V_INFO_LINEAR ;
 int printf (char*,int ,int ) ;

__attribute__((used)) static int
vga_mmap_buf(video_adapter_t *adp, vm_ooffset_t offset, vm_paddr_t *paddr,
         int prot, vm_memattr_t *memattr)
{
    if (adp->va_info.vi_flags & V_INFO_LINEAR)
 return -1;







    if (offset > adp->va_window_size - PAGE_SIZE)
 return -1;

    *paddr = adp->va_info.vi_window + offset;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {size_t td_vslock_sz; } ;
struct TYPE_4__ {int vm_map; } ;


 int MPASS (int) ;
 int VM_MAP_WIRE_NOHOLES ;
 int VM_MAP_WIRE_SYSTEM ;
 TYPE_3__* curproc ;
 TYPE_2__* curthread ;
 int round_page (scalar_t__) ;
 int trunc_page (scalar_t__) ;
 int vm_map_unwire (int *,int ,int ,int) ;

void
vsunlock(void *addr, size_t len)
{


 MPASS(curthread->td_vslock_sz >= len);
 curthread->td_vslock_sz -= len;
 (void)vm_map_unwire(&curproc->p_vmspace->vm_map,
     trunc_page((vm_offset_t)addr), round_page((vm_offset_t)addr + len),
     VM_MAP_WIRE_SYSTEM | VM_MAP_WIRE_NOHOLES);
}

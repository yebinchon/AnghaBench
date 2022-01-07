
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; int domain; } ;


 int _vm_phys_create_seg (scalar_t__,scalar_t__,int ) ;
 TYPE_1__* mem_affinity ;
 int panic (char*,...) ;

__attribute__((used)) static void
vm_phys_create_seg(vm_paddr_t start, vm_paddr_t end)
{
 _vm_phys_create_seg(start, end, 0);

}

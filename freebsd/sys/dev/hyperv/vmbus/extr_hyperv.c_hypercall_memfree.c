
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int * hc_addr; } ;


 int PAGE_SIZE ;
 TYPE_1__ hypercall_context ;
 int kmem_free (int ,int ) ;

__attribute__((used)) static void
hypercall_memfree(void)
{
 kmem_free((vm_offset_t)hypercall_context.hc_addr, PAGE_SIZE);
 hypercall_context.hc_addr = ((void*)0);
}

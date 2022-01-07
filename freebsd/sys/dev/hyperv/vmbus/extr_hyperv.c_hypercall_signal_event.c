
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {int hc_addr; } ;


 int HYPERCALL_SIGNAL_EVENT ;
 TYPE_1__ hypercall_context ;
 int hypercall_md (int ,int ,int ,int ) ;

uint64_t
hypercall_signal_event(bus_addr_t monprm_paddr)
{
 return hypercall_md(hypercall_context.hc_addr,
     HYPERCALL_SIGNAL_EVENT, monprm_paddr, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {int hc_addr; } ;


 int HYPERCALL_POST_MESSAGE ;
 TYPE_1__ hypercall_context ;
 int hypercall_md (int ,int ,int ,int ) ;

uint64_t
hypercall_post_message(bus_addr_t msg_paddr)
{
 return hypercall_md(hypercall_context.hc_addr,
     HYPERCALL_POST_MESSAGE, msg_paddr, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hv_paddr; } ;
struct vmbus_xact {TYPE_1__ x_req_dma; } ;
typedef int bus_addr_t ;



bus_addr_t
vmbus_xact_req_paddr(const struct vmbus_xact *xact)
{

 return (xact->x_req_dma.hv_paddr);
}

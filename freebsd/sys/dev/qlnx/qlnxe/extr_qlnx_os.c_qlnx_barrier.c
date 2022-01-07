
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_2__ {int pci_reg; } ;
typedef TYPE_1__ qlnx_host_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int ,int ,int ) ;

void
qlnx_barrier(void *p_hwfn)
{
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)((struct ecore_hwfn *)p_hwfn)->p_dev;
 bus_barrier(ha->pci_reg, 0, 0, BUS_SPACE_BARRIER_WRITE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct ecore_hwfn {scalar_t__ reg_offset; scalar_t__ p_dev; } ;
struct TYPE_2__ {int pci_reg; } ;
typedef TYPE_1__ qlnx_host_t ;
typedef int bus_size_t ;


 int bus_write_2 (int ,int ,int ) ;

void
qlnx_reg_wr16(void *hwfn, uint32_t reg_addr, uint16_t value)
{
 struct ecore_hwfn *p_hwfn = hwfn;

 bus_write_2(((qlnx_host_t *)p_hwfn->p_dev)->pci_reg, (bus_size_t)(p_hwfn->reg_offset + reg_addr), value);

 return;
}

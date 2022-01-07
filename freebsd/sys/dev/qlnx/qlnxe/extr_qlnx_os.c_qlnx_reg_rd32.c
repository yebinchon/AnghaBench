
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ecore_hwfn {scalar_t__ reg_offset; scalar_t__ p_dev; } ;
struct TYPE_2__ {int pci_reg; } ;
typedef TYPE_1__ qlnx_host_t ;
typedef int bus_size_t ;


 scalar_t__ bus_read_4 (int ,int ) ;

uint32_t
qlnx_reg_rd32(void *hwfn, uint32_t reg_addr)
{
 uint32_t data32;
 struct ecore_hwfn *p_hwfn;

 p_hwfn = hwfn;

 data32 = bus_read_4(((qlnx_host_t *)p_hwfn->p_dev)->pci_reg, (bus_size_t)(p_hwfn->reg_offset + reg_addr));


 return (data32);
}

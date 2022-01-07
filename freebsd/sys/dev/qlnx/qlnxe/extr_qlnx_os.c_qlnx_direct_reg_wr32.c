
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {scalar_t__ regview; } ;
struct TYPE_2__ {int pci_reg; } ;
typedef TYPE_1__ qlnx_host_t ;
typedef scalar_t__ bus_size_t ;


 int bus_write_4 (int ,scalar_t__,int ) ;

void
qlnx_direct_reg_wr32(void *p_hwfn, void *reg_addr, uint32_t value)
{
 bus_size_t offset;
 struct ecore_dev *cdev;

 cdev = ((struct ecore_hwfn *)p_hwfn)->p_dev;
 offset = (bus_size_t)((uint8_t *)reg_addr - (uint8_t *)(cdev->regview));

 bus_write_4(((qlnx_host_t *)cdev)->pci_reg, offset, value);

 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ecore_hwfn {scalar_t__ doorbells; struct ecore_dev* p_dev; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_2__ {int pci_dbells; } ;
typedef TYPE_1__ qlnx_host_t ;


 int bus_write_4 (int ,scalar_t__,scalar_t__) ;

void
qlnx_dbell_wr32_db(void *hwfn, void *reg_addr, uint32_t value)
{
 struct ecore_dev *cdev;
 struct ecore_hwfn *p_hwfn;
 uint32_t offset;

 p_hwfn = hwfn;

 cdev = p_hwfn->p_dev;

 offset = (uint32_t)((uint8_t *)reg_addr - (uint8_t *)(p_hwfn->doorbells));
 bus_write_4(((qlnx_host_t *)cdev)->pci_dbells, offset, value);

 return;
}

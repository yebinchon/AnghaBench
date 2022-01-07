
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ pci_dbells; scalar_t__ pci_reg; struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int BUS_SPACE_BARRIER_READ ;
 int bus_barrier (scalar_t__,int ,int ,int ) ;
 int bus_write_4 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
qlnx_txq_doorbell_wr32(qlnx_host_t *ha, void *reg_addr, uint32_t value)
{
 struct ecore_dev *cdev;
 uint32_t offset;

 cdev = &ha->cdev;

 offset = (uint32_t)((uint8_t *)reg_addr - (uint8_t *)ha->pci_dbells);

 bus_write_4(ha->pci_dbells, offset, value);
 bus_barrier(ha->pci_reg, 0, 0, BUS_SPACE_BARRIER_READ);
 bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u8 ;
typedef int u32 ;
struct qlnxr_dev {TYPE_4__* ha; } ;
struct TYPE_6__ {int value; int agg_flags; } ;
struct TYPE_8__ {int raw; TYPE_1__ data; } ;
struct qlnxr_cq {TYPE_3__ db; scalar_t__ db_addr; } ;
struct TYPE_7__ {scalar_t__ doorbells; } ;
struct TYPE_9__ {int pci_dbells; TYPE_2__ cdev; } ;
typedef TYPE_4__ qlnx_host_t ;


 int BUS_SPACE_BARRIER_READ ;
 int QL_DPRINT12 (TYPE_4__*,char*) ;
 int bus_barrier (int ,int ,int ,int ) ;
 int bus_write_8 (int ,scalar_t__,int ) ;
 int cpu_to_le32 (int ) ;
 int wmb () ;

__attribute__((used)) static void
doorbell_cq(struct qlnxr_dev *dev, struct qlnxr_cq *cq, u32 cons, u8 flags)
{
 uint64_t reg_addr;
 qlnx_host_t *ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 wmb();
 cq->db.data.agg_flags = flags;
 cq->db.data.value = cpu_to_le32(cons);

 reg_addr = (uint64_t)((uint8_t *)cq->db_addr -
    (uint8_t *)(ha->cdev.doorbells));

 bus_write_8(ha->pci_dbells, reg_addr, cq->db.raw);
 bus_barrier(ha->pci_dbells, 0, 0, BUS_SPACE_BARRIER_READ);

 QL_DPRINT12(ha, "exit\n");
 return;
}

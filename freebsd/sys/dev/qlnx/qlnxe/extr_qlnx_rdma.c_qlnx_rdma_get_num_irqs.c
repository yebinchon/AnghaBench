
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hwfns; } ;
struct qlnx_host {TYPE_1__ cdev; } ;


 int QLNX_NUM_CNQ ;
 int ecore_rdma_get_sb_id (int *,int ) ;

int
qlnx_rdma_get_num_irqs(struct qlnx_host *ha)
{
        return (QLNX_NUM_CNQ + ecore_rdma_get_sb_id(&ha->cdev.hwfns[0], 0) + 2);
}

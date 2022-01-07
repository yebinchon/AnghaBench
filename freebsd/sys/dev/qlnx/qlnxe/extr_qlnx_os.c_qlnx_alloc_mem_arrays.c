
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_tx_queue {int dummy; } ;
struct qlnx_rx_queue {int dummy; } ;
struct ecore_sb_info {int dummy; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {int * sb_array; int * rxq_array; int * txq_array; struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QLNX_MAX_RSS ;
 int bzero (int *,int) ;

__attribute__((used)) static int
qlnx_alloc_mem_arrays(qlnx_host_t *ha)
{
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

 bzero(&ha->txq_array[0], (sizeof(struct qlnx_tx_queue) * QLNX_MAX_RSS));
 bzero(&ha->rxq_array[0], (sizeof(struct qlnx_rx_queue) * QLNX_MAX_RSS));
 bzero(&ha->sb_array[0], (sizeof(struct ecore_sb_info) * QLNX_MAX_RSS));

        return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * fp_taskqueue; } ;
typedef TYPE_2__ qla_tx_fp_t ;
struct TYPE_5__ {int num_sds_rings; } ;
struct TYPE_7__ {TYPE_2__* tx_fp; TYPE_1__ hw; } ;
typedef TYPE_3__ qla_host_t ;


 int taskqueue_drain_all (int *) ;

__attribute__((used)) static void
qla_drain_fp_taskqueues(qla_host_t *ha)
{
        int i;

        for (i = 0; i < ha->hw.num_sds_rings; i++) {
                qla_tx_fp_t *fp = &ha->tx_fp[i];

                if (fp->fp_taskqueue != ((void*)0)) {
                        taskqueue_drain_all(fp->fp_taskqueue);
                }
        }
        return;
}

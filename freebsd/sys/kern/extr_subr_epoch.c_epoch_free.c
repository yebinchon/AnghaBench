
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* epoch_t ;
struct TYPE_5__ {size_t e_idx; int e_drain_sx; int e_drain_mtx; int e_pcpu_record; } ;


 int M_EPOCH ;
 int ** allepochs ;
 int epoch_drain_callbacks (TYPE_1__*) ;
 int epoch_wait (int ) ;
 int free (TYPE_1__*,int ) ;
 int global_epoch ;
 int mtx_destroy (int *) ;
 int pcpu_zone_record ;
 int sx_destroy (int *) ;
 int uma_zfree_pcpu (int ,int ) ;

void
epoch_free(epoch_t epoch)
{

 epoch_drain_callbacks(epoch);
 allepochs[epoch->e_idx] = ((void*)0);
 epoch_wait(global_epoch);
 uma_zfree_pcpu(pcpu_zone_record, epoch->e_pcpu_record);
 mtx_destroy(&epoch->e_drain_mtx);
 sx_destroy(&epoch->e_drain_sx);
 free(epoch, M_EPOCH);
}

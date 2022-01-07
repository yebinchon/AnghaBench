
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int size; } ;
typedef TYPE_1__ sli4_queue_t ;
struct TYPE_8__ {int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_hw_command_process (TYPE_2__*,int ,int *,int ) ;
 int sli_queue_read (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int32_t
ocs_hw_mq_process(ocs_hw_t *hw, int32_t status, sli4_queue_t *mq)
{
 uint8_t mqe[SLI4_BMBX_SIZE];

 if (!sli_queue_read(&hw->sli, mq, mqe)) {
  ocs_hw_command_process(hw, status, mqe, mq->size);
 }

 return 0;
}

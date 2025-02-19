
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_17__ {int physical_address; } ;
struct TYPE_16__ {int physical_address; } ;
struct TYPE_20__ {TYPE_2__ address_table; TYPE_1__ headers; } ;
struct TYPE_19__ {TYPE_5__ uf_control; TYPE_3__* memory_descriptors; int * task_context_table; int * remote_node_context_table; int * completion_queue; } ;
struct TYPE_18__ {int physical_address; scalar_t__ virtual_address; } ;
typedef int SCU_TASK_CONTEXT_T ;
typedef int SCU_REMOTE_NODE_CONTEXT_T ;
typedef TYPE_3__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef TYPE_4__ SCIC_SDS_CONTROLLER_T ;


 int MULTI_BIT_ERROR_REPORTING_ENABLE ;
 size_t SCU_MDE_COMPLETION_QUEUE ;
 size_t SCU_MDE_REMOTE_NODE_CONTEXT ;
 size_t SCU_MDE_TASK_CONTEXT ;
 size_t SCU_MDE_UF_BUFFER ;
 int SCU_PUFATHAR_WRITE (TYPE_4__*,int ) ;
 int SCU_SECR0_WRITE (TYPE_4__*,int) ;
 int SCU_SECR1_WRITE (TYPE_4__*,int) ;
 int SCU_UFHBAR_WRITE (TYPE_4__*,int ) ;
 int SIGNLE_BIT_ERROR_CORRECTION_ENABLE ;
 int SINGLE_BIT_ERROR_REPORTING_ENABLE ;
 int SMU_CQBAR_WRITE (TYPE_4__*,int ) ;
 int SMU_HTTBAR_WRITE (TYPE_4__*,int ) ;
 int SMU_RNCBAR_WRITE (TYPE_4__*,int ) ;
 int scic_sds_unsolicited_frame_control_construct (TYPE_5__*,TYPE_3__*,TYPE_4__*) ;

void scic_sds_controller_ram_initialization(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T *mde;



   mde = &this_controller->memory_descriptors[SCU_MDE_COMPLETION_QUEUE];
   this_controller->completion_queue = (U32*) mde->virtual_address;
   SMU_CQBAR_WRITE(this_controller, mde->physical_address);



   mde = &this_controller->memory_descriptors[SCU_MDE_REMOTE_NODE_CONTEXT];
   this_controller->remote_node_context_table = (SCU_REMOTE_NODE_CONTEXT_T *)
                                                mde->virtual_address;
   SMU_RNCBAR_WRITE(this_controller, mde->physical_address);


   mde = &this_controller->memory_descriptors[SCU_MDE_TASK_CONTEXT];
   this_controller->task_context_table = (SCU_TASK_CONTEXT_T *)
                                         mde->virtual_address;
   SMU_HTTBAR_WRITE(this_controller, mde->physical_address);

   mde = &this_controller->memory_descriptors[SCU_MDE_UF_BUFFER];
   scic_sds_unsolicited_frame_control_construct(
      &this_controller->uf_control, mde, this_controller
   );



   SCU_UFHBAR_WRITE(
      this_controller,
      this_controller->uf_control.headers.physical_address);
   SCU_PUFATHAR_WRITE(
      this_controller,
      this_controller->uf_control.address_table.physical_address);


   SCU_SECR0_WRITE(
      this_controller,
      (SIGNLE_BIT_ERROR_CORRECTION_ENABLE
       | MULTI_BIT_ERROR_REPORTING_ENABLE
       | SINGLE_BIT_ERROR_REPORTING_ENABLE) );
   SCU_SECR1_WRITE(
      this_controller,
      (SIGNLE_BIT_ERROR_CORRECTION_ENABLE
       | MULTI_BIT_ERROR_REPORTING_ENABLE
       | SINGLE_BIT_ERROR_REPORTING_ENABLE) );
}

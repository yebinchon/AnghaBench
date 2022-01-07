
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int state_machine; int parent; } ;
struct TYPE_11__ {TYPE_2__ parent; int command_buffer; int started_substate_machine; int has_started_substate_machine; int protocol; } ;
struct TYPE_8__ {scalar_t__ request_length; int function; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
typedef TYPE_3__ SMP_REQUEST_T ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef TYPE_4__ SCIC_SDS_REQUEST_T ;


 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE ;
 int SCIC_SMP_PROTOCOL ;
 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 int SCI_SUCCESS ;







 int TRUE ;
 int memcpy (char*,int ,int) ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_smp_request_started_substate_table ;
 int scu_smp_request_construct_task_context (TYPE_4__*,TYPE_3__*) ;

SCI_STATUS scic_io_request_construct_smp(
   SCI_IO_REQUEST_HANDLE_T scic_smp_request
)
{
   SMP_REQUEST_T smp_request;

   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *) scic_smp_request;
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_SMP_IO_REQUEST,
      "scic_io_request_construct_smp(0x%x) enter\n",
      this_request
   ));

   this_request->protocol = SCIC_SMP_PROTOCOL;
   this_request->has_started_substate_machine = TRUE;


   sci_base_state_machine_construct(
      &this_request->started_substate_machine,
      &this_request->parent.parent,
      scic_sds_smp_request_started_substate_table,
      SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE
   );


   memcpy((char *)&smp_request,
        this_request->command_buffer,
        sizeof(SMP_REQUEST_T));




   if( smp_request.header.request_length == 0 )
   {
       switch( smp_request.header.function )
       {
       case 133:
       case 130:
       case 129:
       case 128:
           smp_request.header.request_length = 2;
           break;
       case 134:
       case 132:
       case 131:
           smp_request.header.request_length = 9;
           break;

       }
   }

   scu_smp_request_construct_task_context(
      this_request,
      &smp_request
   );

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return SCI_SUCCESS;
}

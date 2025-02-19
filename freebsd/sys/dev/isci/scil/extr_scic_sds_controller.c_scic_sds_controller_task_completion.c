
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_7__ {scalar_t__* io_request_sequence; TYPE_1__** io_request_table; } ;
struct TYPE_6__ {scalar_t__ io_tag; } ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ;
 TYPE_1__* SCI_INVALID_HANDLE ;
 size_t SCU_GET_COMPLETION_INDEX (size_t) ;
 int scic_sds_io_request_tc_completion (TYPE_1__*,size_t) ;
 scalar_t__ scic_sds_io_tag_get_sequence (scalar_t__) ;

__attribute__((used)) static
void scic_sds_controller_task_completion(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 completion_entry
)
{
   U32 index;
   SCIC_SDS_REQUEST_T *io_request;

   index = SCU_GET_COMPLETION_INDEX(completion_entry);
   io_request = this_controller->io_request_table[index];


   if (
           (io_request != SCI_INVALID_HANDLE)
        && (io_request->io_tag != SCI_CONTROLLER_INVALID_IO_TAG)
        && (
                scic_sds_io_tag_get_sequence(io_request->io_tag)
             == this_controller->io_request_sequence[index]
           )
      )
   {

      scic_sds_io_request_tc_completion(io_request, completion_entry);
   }
}

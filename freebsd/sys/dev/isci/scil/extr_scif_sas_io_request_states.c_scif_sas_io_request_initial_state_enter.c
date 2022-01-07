
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
struct TYPE_5__ {TYPE_3__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_IO_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 int SCI_BASE_REQUEST_STATE_INITIAL ;
 int SET_STATE_HANDLER (TYPE_3__*,int ,int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_io_request_state_handler_table ;

__attribute__((used)) static
void scif_sas_io_request_initial_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *)object;

   SET_STATE_HANDLER(
      &fw_io->parent,
      scif_sas_io_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_INITIAL
   );


   sci_base_state_machine_change_state(
      &fw_io->parent.parent.state_machine, SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );
}

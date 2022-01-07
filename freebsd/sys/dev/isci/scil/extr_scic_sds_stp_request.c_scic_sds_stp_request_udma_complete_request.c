
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_request_set_status (TYPE_2__*,int ,int ) ;

__attribute__((used)) static
void scic_sds_stp_request_udma_complete_request(
   SCIC_SDS_REQUEST_T * this_request,
   U32 scu_status,
   SCI_STATUS sci_status
)
{
   scic_sds_request_set_status(
      this_request, scu_status, sci_status
   );

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_FAILED ;
 int SCI_FAILURE_TIMEOUT ;
 int scic_cb_port_hard_reset_complete (int ,int *,int ) ;
 int scic_sds_port_get_controller (int *) ;
 int scic_sds_port_set_base_state_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_port_failed_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   scic_sds_port_set_base_state_handlers(
      this_port,
      SCI_BASE_PORT_STATE_FAILED
   );

   scic_cb_port_hard_reset_complete(
      scic_sds_port_get_controller(this_port),
      this_port,
      SCI_FAILURE_TIMEOUT
   );
}

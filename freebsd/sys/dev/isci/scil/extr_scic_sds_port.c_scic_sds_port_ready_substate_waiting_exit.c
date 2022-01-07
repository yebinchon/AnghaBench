
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PORT_T ;


 int scic_sds_port_resume_port_task_scheduler (int *) ;

__attribute__((used)) static
void scic_sds_port_ready_substate_waiting_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)object;
   scic_sds_port_resume_port_task_scheduler(this_port);
}

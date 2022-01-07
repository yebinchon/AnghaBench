
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int ETM_ENABLE ;
 int PTSG_ENABLE ;
 int SCU_PTSGCR_GEN_BIT (int ) ;
 int SCU_PTSGCR_READ (int *) ;
 int SCU_PTSGCR_WRITE (int *,int) ;

void scic_sds_controller_enable_port_task_scheduler(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 port_task_scheduler_value;

   port_task_scheduler_value = SCU_PTSGCR_READ(this_controller);

   port_task_scheduler_value |=
      (SCU_PTSGCR_GEN_BIT(ETM_ENABLE) | SCU_PTSGCR_GEN_BIT(PTSG_ENABLE));

   SCU_PTSGCR_WRITE(this_controller, port_task_scheduler_value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_PORT_T ;


 int ENABLE ;
 int SCU_PTSxCR_GEN_BIT (int ) ;
 int SUSPEND ;
 int control ;
 int scu_port_task_scheduler_read (int *,int ) ;
 int scu_port_task_scheduler_write (int *,int ,int) ;

__attribute__((used)) static
void scic_sds_port_enable_port_task_scheduler(
   SCIC_SDS_PORT_T *this_port
)
{
   U32 pts_control_value;

   pts_control_value = scu_port_task_scheduler_read(this_port, control);

   pts_control_value |= SCU_PTSxCR_GEN_BIT(ENABLE) | SCU_PTSxCR_GEN_BIT(SUSPEND);

   scu_port_task_scheduler_write(this_port, control, pts_control_value);
}

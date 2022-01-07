
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_CONTROLLER_T ;


 int SCU_UFQGP_WRITE (int *,int) ;
 int SMU_CQGR_WRITE (int *,int) ;
 int SMU_SMUSRCR_WRITE (int *,int) ;
 int scic_cb_stall_execution (int) ;
 int scic_controller_disable_interrupts (int *) ;

void scic_sds_controller_reset_hardware(
   SCIC_SDS_CONTROLLER_T * this_controller
)
{

   scic_controller_disable_interrupts(this_controller);


   SMU_SMUSRCR_WRITE(this_controller, 0xFFFFFFFF);


   scic_cb_stall_execution(1000);


   SMU_CQGR_WRITE(this_controller, 0x00000000);


   SCU_UFQGP_WRITE(this_controller, 0x00000000);
}

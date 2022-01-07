
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int IDLE_ENABLE ;
 int REGCLK_ENABLE ;
 int SCI_BASE_CONTROLLER_STATE_READY ;
 int SMU_CGUCR_GEN_BIT (int ) ;
 int SMU_CGUCR_READ (int *) ;
 int SMU_CGUCR_WRITE (int *,int) ;
 int TXCLK_ENABLE ;
 int XCLK_ENABLE ;
 int scic_controller_set_interrupt_coalescence (int *,int,int) ;
 int scic_sds_controller_set_base_state_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_controller_ready_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   U32 clock_gating_unit_value;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_READY);




   clock_gating_unit_value = SMU_CGUCR_READ(this_controller);

   clock_gating_unit_value &= ~( SMU_CGUCR_GEN_BIT(REGCLK_ENABLE)
                               | SMU_CGUCR_GEN_BIT(TXCLK_ENABLE)
                               | SMU_CGUCR_GEN_BIT(XCLK_ENABLE) );
   clock_gating_unit_value |= SMU_CGUCR_GEN_BIT(IDLE_ENABLE);

   SMU_CGUCR_WRITE(this_controller, clock_gating_unit_value);


   scic_controller_set_interrupt_coalescence(
      this_controller, 0x10, 250);
}

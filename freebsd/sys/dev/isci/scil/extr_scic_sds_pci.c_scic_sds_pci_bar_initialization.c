
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* lex_registers; int controller_index; scalar_t__ pci_revision; int * scu_registers; int * smu_registers; } ;
typedef int SMU_REGISTERS_T ;
typedef int SCU_REGISTERS_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int ARLINGTON_LEX_BAR ;
 int ARLINGTON_SCU_BAR ;
 int ARLINGTON_SMU_BAR ;
 int LEX_REGISTER_OFFSET ;
 int PATSBURG_IO_SPACE_BAR0 ;
 int PATSBURG_IO_SPACE_BAR1 ;
 int PATSBURG_SCU_BAR ;
 int PATSBURG_SMU_BAR ;
 scalar_t__ SCU_PBG_HBA_REV_B0 ;
 scalar_t__ scic_cb_pci_get_bar (TYPE_1__*,int ) ;

void scic_sds_pci_bar_initialization(
   SCIC_SDS_CONTROLLER_T* this_controller
)
{
   this_controller->smu_registers =
      (SMU_REGISTERS_T *)(
         (char *)scic_cb_pci_get_bar(this_controller, PATSBURG_SMU_BAR)
                +(0x4000 * this_controller->controller_index));
   this_controller->scu_registers =
      (SCU_REGISTERS_T *)(
         (char *)scic_cb_pci_get_bar(this_controller, PATSBURG_SCU_BAR)
                +(0x400000 * this_controller->controller_index));
}

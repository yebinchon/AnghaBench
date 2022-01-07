
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * smu_registers; } ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int ASSERT (int ) ;
 int SMU_IMR_WRITE (TYPE_1__*,int) ;

void scic_controller_enable_interrupts(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   ASSERT(this_controller->smu_registers != ((void*)0));

   SMU_IMR_WRITE(this_controller, 0x00000000);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int SCU_SCRATCH_RAM_SIZE_IN_DWORDS ;

U32 scic_controller_get_scratch_ram_size(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   return SCU_SCRATCH_RAM_SIZE_IN_DWORDS;
}

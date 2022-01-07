
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_MAX_PHYS ;
 int * output_data_select ;
 int scu_sgpio_peg0_register_write (int *,int ,int) ;

__attribute__((used)) static
void scic_sgpio_write_SGODSR_register(
   SCIC_SDS_CONTROLLER_T *controller,
   U32 phy_mask,
   U32 value
)
{
   U8 phy_index;

   for (phy_index = 0; phy_index < SCI_MAX_PHYS; phy_index++)
   {
      if (phy_mask >> phy_index & 1)
      {
          scu_sgpio_peg0_register_write(
             controller, output_data_select[phy_index], value
          );
      }
   }
}

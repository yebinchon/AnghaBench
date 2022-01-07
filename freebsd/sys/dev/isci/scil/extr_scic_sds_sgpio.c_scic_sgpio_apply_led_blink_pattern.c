
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef scalar_t__ BOOL ;


 int SGODSR_ACTIVITY_LED_SHIFT ;
 int SGODSR_ERROR_LED_SHIFT ;
 int SGODSR_INVERT_BIT ;
 int SGODSR_LOCATE_LED_SHIFT ;
 int scic_sgpio_write_SGODSR_register (int *,int,int) ;

void scic_sgpio_apply_led_blink_pattern(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 phy_mask,
   BOOL error,
   BOOL locate,
   BOOL activity,
   U8 pattern_selection
)
{
   U32 output_value = 0;

   SCIC_SDS_CONTROLLER_T * core_controller = (SCIC_SDS_CONTROLLER_T *) controller;


   output_value = (SGODSR_INVERT_BIT << SGODSR_ERROR_LED_SHIFT)
                     | (SGODSR_INVERT_BIT << SGODSR_LOCATE_LED_SHIFT)
                     | (SGODSR_INVERT_BIT << SGODSR_ACTIVITY_LED_SHIFT);

   if(error)
   {
      output_value |= pattern_selection << SGODSR_ERROR_LED_SHIFT;
      output_value &= ~(SGODSR_INVERT_BIT << SGODSR_ERROR_LED_SHIFT);
   }
   if(locate)
   {
      output_value |= pattern_selection << SGODSR_LOCATE_LED_SHIFT;
      output_value &= ~(SGODSR_INVERT_BIT << SGODSR_LOCATE_LED_SHIFT);
   }
   if(activity)
   {
      output_value |= pattern_selection << SGODSR_ACTIVITY_LED_SHIFT;
      output_value &= ~(SGODSR_INVERT_BIT << SGODSR_ACTIVITY_LED_SHIFT);
   }

   scic_sgpio_write_SGODSR_register(core_controller, phy_mask, output_value);
}

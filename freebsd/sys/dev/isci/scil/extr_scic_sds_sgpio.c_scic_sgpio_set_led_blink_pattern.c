
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_PORT_T ;
typedef int BOOL ;


 int scic_sds_port_get_phys (int *) ;
 int scic_sgpio_apply_led_blink_pattern (int ,int ,int ,int ,int ,int ) ;

void scic_sgpio_set_led_blink_pattern(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_PORT_HANDLE_T port_handle,
   BOOL error,
   BOOL locate,
   BOOL activity,
   U8 pattern_selection
)
{
   U32 phy_mask;

   SCIC_SDS_PORT_T * port = (SCIC_SDS_PORT_T *) port_handle;

   phy_mask = scic_sds_port_get_phys(port);

   scic_sgpio_apply_led_blink_pattern(
           controller, phy_mask, error, locate, activity, pattern_selection);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;


 int UMASS_T_CBI_COMMAND ;
 int UMASS_T_CBI_STATUS ;
 int umass_t_cbi_data_clear_stall_callback (struct usb_xfer*,int ,int ,int ) ;

__attribute__((used)) static void
umass_t_cbi_reset4_callback(struct usb_xfer *xfer, usb_error_t error)
{
 umass_t_cbi_data_clear_stall_callback(xfer, UMASS_T_CBI_COMMAND,
     UMASS_T_CBI_STATUS, error);
}

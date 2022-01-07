
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;


 int ST_DATA_RD ;
 int ST_STATUS ;
 int bbb_data_clear_stall_callback (struct usb_xfer*,int ,int ) ;

__attribute__((used)) static void
bbb_data_rd_cs_callback(struct usb_xfer *xfer, usb_error_t error)
{
 bbb_data_clear_stall_callback(xfer, ST_STATUS,
     ST_DATA_RD);
}

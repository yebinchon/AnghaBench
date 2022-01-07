
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_msc_params {int duration; int try_invalid_scsi_command; int try_invalid_wrapper_block; int try_last_lba; int max_errors; } ;


 int memset (struct usb_msc_params*,int ,int) ;

__attribute__((used)) static void
set_defaults(struct usb_msc_params *p)
{
 memset(p, 0, sizeof(*p));

 p->duration = 60;
 p->try_invalid_scsi_command = 1;
 p->try_invalid_wrapper_block = 1;
 p->try_last_lba = 1;
 p->max_errors = -1;
}

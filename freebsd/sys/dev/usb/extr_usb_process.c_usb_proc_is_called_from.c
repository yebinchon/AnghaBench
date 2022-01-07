
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_process {scalar_t__ up_curtd; } ;


 scalar_t__ curthread ;

int
usb_proc_is_called_from(struct usb_process *up)
{
 return (up->up_curtd == curthread);
}

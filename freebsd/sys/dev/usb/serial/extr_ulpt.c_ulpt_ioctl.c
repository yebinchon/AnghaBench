
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct usb_fifo {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int
ulpt_ioctl(struct usb_fifo *fifo, u_long cmd, void *data,
    int fflags)
{
 return (ENODEV);
}

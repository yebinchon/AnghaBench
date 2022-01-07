
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;


 int FREAD ;
 int FWRITE ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;

__attribute__((used)) static void
ubtbcmfw_close(struct usb_fifo *fifo, int fflags)
{
 if (fflags & (FREAD | FWRITE))
  usb_fifo_free_buffer(fifo);
}

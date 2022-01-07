
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ur ;
typedef int u_long ;
struct usb_fifo {int dummy; } ;
struct TYPE_2__ {int bmRequestType; int wLength; int wIndex; int wValue; int bRequest; } ;
struct usb_ctl_request {int ucr_data; TYPE_1__ ucr_request; } ;
struct RioCommand {int requesttype; int buffer; int length; int index; int value; int request; } ;


 int DPRINTFN (int,char*) ;
 int EINVAL ;
 int EPERM ;
 int FWRITE ;


 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int memset (struct usb_ctl_request*,int ,int) ;
 int ugen_do_request (struct usb_fifo*,struct usb_ctl_request*) ;

__attribute__((used)) static int
urio_ioctl(struct usb_fifo *fifo, u_long cmd, void *addr,
    int fflags)
{
 struct usb_ctl_request ur;
 struct RioCommand *rio_cmd;
 int error;

 switch (cmd) {
 case 129:
  if (!(fflags & FWRITE)) {
   error = EPERM;
   goto done;
  }
  memset(&ur, 0, sizeof(ur));
  rio_cmd = addr;
  ur.ucr_request.bmRequestType =
      rio_cmd->requesttype | UT_READ_VENDOR_DEVICE;
  break;

 case 128:
  if (!(fflags & FWRITE)) {
   error = EPERM;
   goto done;
  }
  memset(&ur, 0, sizeof(ur));
  rio_cmd = addr;
  ur.ucr_request.bmRequestType =
      rio_cmd->requesttype | UT_WRITE_VENDOR_DEVICE;
  break;

 default:
  error = EINVAL;
  goto done;
 }

 DPRINTFN(2, "Sending command\n");


 ur.ucr_request.bRequest = rio_cmd->request;
 USETW(ur.ucr_request.wValue, rio_cmd->value);
 USETW(ur.ucr_request.wIndex, rio_cmd->index);
 USETW(ur.ucr_request.wLength, rio_cmd->length);
 ur.ucr_data = rio_cmd->buffer;


 error = ugen_do_request(fifo, &ur);

done:
 return (error);
}

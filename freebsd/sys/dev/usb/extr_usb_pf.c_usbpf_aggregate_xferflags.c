
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_xfer_flags {int force_short_xfer; int short_xfer_ok; int short_frames_ok; int pipe_bof; int proxy_buffer; int ext_buffer; int manual_status; int no_pipe_ok; int stall_pipe; } ;


 int USBPF_FLAG_EXT_BUFFER ;
 int USBPF_FLAG_FORCE_SHORT_XFER ;
 int USBPF_FLAG_MANUAL_STATUS ;
 int USBPF_FLAG_NO_PIPE_OK ;
 int USBPF_FLAG_PIPE_BOF ;
 int USBPF_FLAG_PROXY_BUFFER ;
 int USBPF_FLAG_SHORT_FRAMES_OK ;
 int USBPF_FLAG_SHORT_XFER_OK ;
 int USBPF_FLAG_STALL_PIPE ;

__attribute__((used)) static uint32_t
usbpf_aggregate_xferflags(struct usb_xfer_flags *flags)
{
 uint32_t val = 0;

 if (flags->force_short_xfer == 1)
  val |= USBPF_FLAG_FORCE_SHORT_XFER;
 if (flags->short_xfer_ok == 1)
  val |= USBPF_FLAG_SHORT_XFER_OK;
 if (flags->short_frames_ok == 1)
  val |= USBPF_FLAG_SHORT_FRAMES_OK;
 if (flags->pipe_bof == 1)
  val |= USBPF_FLAG_PIPE_BOF;
 if (flags->proxy_buffer == 1)
  val |= USBPF_FLAG_PROXY_BUFFER;
 if (flags->ext_buffer == 1)
  val |= USBPF_FLAG_EXT_BUFFER;
 if (flags->manual_status == 1)
  val |= USBPF_FLAG_MANUAL_STATUS;
 if (flags->no_pipe_ok == 1)
  val |= USBPF_FLAG_NO_PIPE_OK;
 if (flags->stall_pipe == 1)
  val |= USBPF_FLAG_STALL_PIPE;
 return (val);
}

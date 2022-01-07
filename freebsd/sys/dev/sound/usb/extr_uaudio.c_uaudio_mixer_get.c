
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {int bRequest; int wIndex; int wValue; int bmRequestType; int wLength; } ;
struct usb_device {int dummy; } ;
struct uaudio_mixer_node {int* wValue; scalar_t__ wIndex; int type; } ;
typedef int data ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*,int) ;




 scalar_t__ MIX_SIZE (int ) ;
 int UA20_CS_CUR ;
 int UA20_CS_RANGE ;
 scalar_t__ UAUDIO_VERSION_20 ;
 scalar_t__ UAUDIO_VERSION_30 ;
 int USETW (int ,scalar_t__) ;
 int UT_READ_CLASS_INTERFACE ;
 int memset (int*,int ,int) ;
 int uaudio_mixer_signext (int ,int) ;
 scalar_t__ usbd_do_request (struct usb_device*,int *,struct usb_device_request*,int*) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static int
uaudio_mixer_get(struct usb_device *udev, uint16_t audio_rev,
    uint8_t what, struct uaudio_mixer_node *mc)
{
 struct usb_device_request req;
 int val;
 uint8_t data[2 + (2 * 3)];
 usb_error_t err;

 if (mc->wValue[0] == -1)
  return (0);

 if (audio_rev >= UAUDIO_VERSION_30)
  return (0);
 else if (audio_rev >= UAUDIO_VERSION_20) {
  if (what == 131) {
   req.bRequest = UA20_CS_CUR;
   USETW(req.wLength, 2);
  } else {
   req.bRequest = UA20_CS_RANGE;
   USETW(req.wLength, 8);
  }
 } else {
  uint16_t len = MIX_SIZE(mc->type);

  req.bRequest = what;
  USETW(req.wLength, len);
 }

 req.bmRequestType = UT_READ_CLASS_INTERFACE;
 USETW(req.wValue, mc->wValue[0]);
 USETW(req.wIndex, mc->wIndex);

 memset(data, 0, sizeof(data));

 err = usbd_do_request(udev, ((void*)0), &req, data);
 if (err) {
  DPRINTF("err=%s\n", usbd_errstr(err));
  return (0);
 }

 if (audio_rev >= UAUDIO_VERSION_30) {
  val = 0;
 } else if (audio_rev >= UAUDIO_VERSION_20) {
  switch (what) {
  case 131:
   val = (data[0] | (data[1] << 8));
   break;
  case 129:
   val = (data[2] | (data[3] << 8));
   break;
  case 130:
   val = (data[4] | (data[5] << 8));
   break;
  case 128:
   val = (data[6] | (data[7] << 8));
   break;
  default:
   val = 0;
   break;
  }
 } else {
  val = (data[0] | (data[1] << 8));
 }

 if (what == 131 || what == 129 || what == 130)
  val = uaudio_mixer_signext(mc->type, val);

 DPRINTFN(3, "val=%d\n", val);

 return (val);
}

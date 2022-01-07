
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int flags; int volume_down_loc; int volume_down_id; int volume_up_loc; int volume_up_id; int mute_loc; int mute_id; } ;
struct uaudio_softc {TYPE_1__ sc_hid; struct snd_mixer* sc_mixer_dev; } ;
struct snd_mixer {int dummy; } ;


 int DPRINTF (char*,...) ;
 int UAUDIO_HID_HAS_ID ;
 int UAUDIO_HID_HAS_MUTE ;
 int UAUDIO_HID_HAS_VOLUME_DOWN ;
 int UAUDIO_HID_HAS_VOLUME_UP ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int hid_get_data (int const*,int,int *) ;
 int mixer_hwvol_mute_locked (struct snd_mixer*) ;
 int mixer_hwvol_step_locked (struct snd_mixer*,int,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int * usbd_xfer_get_frame_buffer (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uaudio_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uaudio_hid_rx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uaudio_softc *sc = usbd_xfer_softc(xfer);
 const uint8_t *buffer = usbd_xfer_get_frame_buffer(xfer, 0);
 struct snd_mixer *m;
 uint8_t id;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTF("actlen=%d\n", actlen);

  if (actlen != 0 &&
      (sc->sc_hid.flags & UAUDIO_HID_HAS_ID)) {
   id = *buffer;
   buffer++;
   actlen--;
  } else {
   id = 0;
  }

  m = sc->sc_mixer_dev;

  if ((sc->sc_hid.flags & UAUDIO_HID_HAS_MUTE) &&
      (sc->sc_hid.mute_id == id) &&
      hid_get_data(buffer, actlen,
      &sc->sc_hid.mute_loc)) {

   DPRINTF("Mute toggle\n");

   mixer_hwvol_mute_locked(m);
  }

  if ((sc->sc_hid.flags & UAUDIO_HID_HAS_VOLUME_UP) &&
      (sc->sc_hid.volume_up_id == id) &&
      hid_get_data(buffer, actlen,
      &sc->sc_hid.volume_up_loc)) {

   DPRINTF("Volume Up\n");

   mixer_hwvol_step_locked(m, 1, 1);
  }

  if ((sc->sc_hid.flags & UAUDIO_HID_HAS_VOLUME_DOWN) &&
      (sc->sc_hid.volume_down_id == id) &&
      hid_get_data(buffer, actlen,
      &sc->sc_hid.volume_down_loc)) {

   DPRINTF("Volume Down\n");

   mixer_hwvol_step_locked(m, -1, -1);
  }

 case 129:
tr_setup:

  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:

  DPRINTF("error=%s\n", usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}

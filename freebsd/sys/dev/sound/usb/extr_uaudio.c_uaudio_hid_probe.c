
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_attach_arg {int device; } ;
struct TYPE_2__ {int flags; int xfer; int iface_index; int mute_id; int mute_loc; int volume_down_id; int volume_down_loc; int volume_up_id; int volume_up_loc; } ;
struct uaudio_softc {int * sc_mixer_lock; TYPE_1__ sc_hid; int sc_mixer_iface_index; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*) ;
 int HID_USAGE2 (int ,int) ;
 int HIO_VARIABLE ;
 int HUP_CONSUMER ;
 int M_TEMP ;
 int UAUDIO_HID_HAS_ID ;
 int UAUDIO_HID_HAS_MUTE ;
 int UAUDIO_HID_HAS_VOLUME_DOWN ;
 int UAUDIO_HID_HAS_VOLUME_UP ;
 int UAUDIO_HID_N_TRANSFER ;
 int UAUDIO_HID_VALID ;
 int free (void*,int ) ;
 int hid_input ;
 scalar_t__ hid_locate (void*,int ,int ,int ,int ,int *,int*,int *) ;
 int hid_report_size (void*,int ,int ,scalar_t__*) ;
 int uaudio_hid_config ;
 int usbd_errstr (int) ;
 int usbd_req_get_hid_desc (int ,int *,void**,int *,int ,int ) ;
 int usbd_set_parent_iface (int ,int ,int ) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct uaudio_softc*,int *) ;

__attribute__((used)) static int
uaudio_hid_probe(struct uaudio_softc *sc,
    struct usb_attach_arg *uaa)
{
 void *d_ptr;
 uint32_t flags;
 uint16_t d_len;
 uint8_t id;
 int error;

 if (!(sc->sc_hid.flags & UAUDIO_HID_VALID))
  return (-1);

 if (sc->sc_mixer_lock == ((void*)0))
  return (-1);


 error = usbd_req_get_hid_desc(uaa->device, ((void*)0), &d_ptr,
     &d_len, M_TEMP, sc->sc_hid.iface_index);

 if (error) {
  DPRINTF("error reading report description\n");
  return (-1);
 }


 hid_report_size(d_ptr, d_len, hid_input, &id);

 if (id != 0)
  sc->sc_hid.flags |= UAUDIO_HID_HAS_ID;

 if (hid_locate(d_ptr, d_len,
     HID_USAGE2(HUP_CONSUMER, 0xE9 ),
     hid_input, 0, &sc->sc_hid.volume_up_loc, &flags,
     &sc->sc_hid.volume_up_id)) {
  if (flags & HIO_VARIABLE)
   sc->sc_hid.flags |= UAUDIO_HID_HAS_VOLUME_UP;
  DPRINTFN(1, "Found Volume Up key\n");
 }

 if (hid_locate(d_ptr, d_len,
     HID_USAGE2(HUP_CONSUMER, 0xEA ),
     hid_input, 0, &sc->sc_hid.volume_down_loc, &flags,
     &sc->sc_hid.volume_down_id)) {
  if (flags & HIO_VARIABLE)
   sc->sc_hid.flags |= UAUDIO_HID_HAS_VOLUME_DOWN;
  DPRINTFN(1, "Found Volume Down key\n");
 }

 if (hid_locate(d_ptr, d_len,
     HID_USAGE2(HUP_CONSUMER, 0xE2 ),
     hid_input, 0, &sc->sc_hid.mute_loc, &flags,
     &sc->sc_hid.mute_id)) {
  if (flags & HIO_VARIABLE)
   sc->sc_hid.flags |= UAUDIO_HID_HAS_MUTE;
  DPRINTFN(1, "Found Mute key\n");
 }

 free(d_ptr, M_TEMP);

 if (!(sc->sc_hid.flags & (UAUDIO_HID_HAS_VOLUME_UP |
     UAUDIO_HID_HAS_VOLUME_DOWN |
     UAUDIO_HID_HAS_MUTE))) {
  DPRINTFN(1, "Did not find any volume related keys\n");
  return (-1);
 }


 usbd_set_parent_iface(uaa->device, sc->sc_hid.iface_index,
     sc->sc_mixer_iface_index);


 error = usbd_transfer_setup(uaa->device, &sc->sc_hid.iface_index,
     sc->sc_hid.xfer, uaudio_hid_config, UAUDIO_HID_N_TRANSFER,
     sc, sc->sc_mixer_lock);
 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  return (-1);
 }
 return (0);
}

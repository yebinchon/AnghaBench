
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct usb_attach_arg {int device; } ;
struct umidi_sub_chan {int fifo; } ;
struct umidi_chan {int single_command; scalar_t__ max_emb_jack; int mtx; int ** xfer; int iface_index; struct umidi_sub_chan* sub; int iface_alt_index; } ;
struct uaudio_softc {int sc_udev; int sc_mixer_iface_index; struct umidi_chan sc_midi_chan; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int GID_OPERATOR ;
 int UID_ROOT ;
 scalar_t__ UMIDI_EMB_JACK_MAX ;
 int UMIDI_N_TRANSFER ;
 size_t UMIDI_RX_TRANSFER ;
 size_t UMIDI_TX_TRANSFER ;
 int UQ_SINGLE_CMD_MIDI ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uaudio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int umidi_config ;
 int umidi_fifo_methods ;
 int usb_fifo_attach (int ,struct umidi_chan*,int *,int *,int *,int,size_t,int ,int ,int ,int) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usbd_errstr (int) ;
 scalar_t__ usbd_set_alt_interface_index (int ,int ,int ) ;
 int usbd_set_parent_iface (int ,int ,int ) ;
 int usbd_transfer_setup (int ,int *,int **,int ,int ,struct umidi_chan*,int *) ;
 int usbd_transfer_start (int *) ;
 scalar_t__ usbd_xfer_maxp_was_clamped (int *) ;

__attribute__((used)) static int
umidi_probe(device_t dev)
{
 struct uaudio_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct umidi_chan *chan = &sc->sc_midi_chan;
 struct umidi_sub_chan *sub;
 int unit = device_get_unit(dev);
 int error;
 uint32_t n;

 if (usb_test_quirk(uaa, UQ_SINGLE_CMD_MIDI))
  chan->single_command = 1;

 if (usbd_set_alt_interface_index(sc->sc_udev, chan->iface_index,
     chan->iface_alt_index)) {
  DPRINTF("setting of alternate index failed!\n");
  goto detach;
 }
 usbd_set_parent_iface(sc->sc_udev, chan->iface_index,
     sc->sc_mixer_iface_index);

 error = usbd_transfer_setup(uaa->device, &chan->iface_index,
     chan->xfer, umidi_config, UMIDI_N_TRANSFER,
     chan, &chan->mtx);
 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }
 if (chan->xfer[UMIDI_TX_TRANSFER] == ((void*)0) &&
     chan->xfer[UMIDI_RX_TRANSFER] == ((void*)0)) {
  DPRINTF("no BULK or INTERRUPT MIDI endpoint(s) found\n");
  goto detach;
 }
 if (chan->xfer[UMIDI_TX_TRANSFER] != ((void*)0) &&
     usbd_xfer_maxp_was_clamped(chan->xfer[UMIDI_TX_TRANSFER]))
  chan->single_command = 1;

 if (chan->single_command != 0)
  device_printf(dev, "Single command MIDI quirk enabled\n");

 if ((chan->max_emb_jack == 0) ||
     (chan->max_emb_jack > UMIDI_EMB_JACK_MAX)) {
  chan->max_emb_jack = UMIDI_EMB_JACK_MAX;
 }

 for (n = 0; n < chan->max_emb_jack; n++) {

  sub = &chan->sub[n];

  error = usb_fifo_attach(sc->sc_udev, chan, &chan->mtx,
      &umidi_fifo_methods, &sub->fifo, unit, n,
      chan->iface_index,
      UID_ROOT, GID_OPERATOR, 0644);
  if (error) {
   goto detach;
  }
 }

 mtx_lock(&chan->mtx);







 usbd_transfer_start(chan->xfer[UMIDI_RX_TRANSFER]);

 mtx_unlock(&chan->mtx);

 return (0);

detach:
 return (ENXIO);
}

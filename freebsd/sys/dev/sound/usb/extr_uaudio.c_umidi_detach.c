
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct umidi_chan {int mtx; int * xfer; TYPE_1__* sub; } ;
struct uaudio_softc {struct umidi_chan sc_midi_chan; } ;
typedef int device_t ;
struct TYPE_2__ {int fifo; } ;


 size_t UMIDI_EMB_JACK_MAX ;
 int UMIDI_N_TRANSFER ;
 size_t UMIDI_RX_TRANSFER ;
 struct uaudio_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_fifo_detach (int *) ;
 int usbd_transfer_stop (int ) ;
 int usbd_transfer_unsetup (int *,int ) ;

__attribute__((used)) static int
umidi_detach(device_t dev)
{
 struct uaudio_softc *sc = device_get_softc(dev);
 struct umidi_chan *chan = &sc->sc_midi_chan;
 uint32_t n;

 for (n = 0; n < UMIDI_EMB_JACK_MAX; n++)
  usb_fifo_detach(&chan->sub[n].fifo);

 mtx_lock(&chan->mtx);

 usbd_transfer_stop(chan->xfer[UMIDI_RX_TRANSFER]);

 mtx_unlock(&chan->mtx);

 usbd_transfer_unsetup(chan->xfer, UMIDI_N_TRANSFER);

 mtx_destroy(&chan->mtx);

 return (0);
}

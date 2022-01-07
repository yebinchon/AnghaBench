
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uaudio_softc {int * sc_mixer_xfer; } ;
struct uaudio_mixer_node {int* update; int * wData; } ;
typedef int int32_t ;


 int uaudio_mixer_bsd2value (struct uaudio_mixer_node*,int ) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uaudio_mixer_ctl_set(struct uaudio_softc *sc, struct uaudio_mixer_node *mc,
    uint8_t chan, int32_t val)
{
 val = uaudio_mixer_bsd2value(mc, val);

 mc->update[chan / 8] |= (1 << (chan % 8));
 mc->wData[chan] = val;



 usbd_transfer_start(sc->sc_mixer_xfer[0]);
}

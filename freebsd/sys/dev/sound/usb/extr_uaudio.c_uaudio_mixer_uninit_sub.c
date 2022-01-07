
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {int * sc_mixer_lock; int sc_mixer_xfer; } ;


 int DPRINTF (char*) ;
 int usbd_transfer_unsetup (int ,int) ;

int
uaudio_mixer_uninit_sub(struct uaudio_softc *sc)
{
 DPRINTF("\n");

 usbd_transfer_unsetup(sc->sc_mixer_xfer, 1);

 sc->sc_mixer_lock = ((void*)0);

 return (0);
}

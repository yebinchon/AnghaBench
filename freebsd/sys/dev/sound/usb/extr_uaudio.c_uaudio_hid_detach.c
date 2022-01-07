
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xfer; } ;
struct uaudio_softc {TYPE_1__ sc_hid; } ;


 int UAUDIO_HID_N_TRANSFER ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static void
uaudio_hid_detach(struct uaudio_softc *sc)
{
 usbd_transfer_unsetup(sc->sc_hid.xfer, UAUDIO_HID_N_TRANSFER);
}

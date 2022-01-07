
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct TYPE_2__ {int * sc_xfer; } ;


 size_t UMCS7840_BULK_RD_EP ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
umcs7840_stop_read(struct ucom_softc *ucom)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint8_t pn = ucom->sc_portno;


 usbd_transfer_stop(sc->sc_ports[pn].sc_xfer[UMCS7840_BULK_RD_EP]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct aue_softc {int dummy; } ;


 int aue_read_mac (struct aue_softc*,int ) ;
 int aue_reset (struct aue_softc*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
aue_attach_post(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);


 aue_reset(sc);


 aue_read_mac(sc, ue->ue_eaddr);
}

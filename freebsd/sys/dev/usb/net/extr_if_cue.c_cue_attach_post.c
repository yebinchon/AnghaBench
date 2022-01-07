
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct cue_softc {int dummy; } ;


 int cue_getmac (struct cue_softc*,int ) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
cue_attach_post(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);

 cue_getmac(sc, ue->ue_eaddr);
}

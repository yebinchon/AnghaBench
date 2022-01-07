
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct mos_softc {int dummy; } ;


 int MOS_DPRINTFN (char*,...) ;
 int ether_sprintf (int ) ;
 int mos_chip_init (struct mos_softc*) ;
 int mos_readmac (struct mos_softc*,int ) ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
mos_attach_post(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);
        int err;


 err = mos_readmac(sc, ue->ue_eaddr);

 if (err)
   MOS_DPRINTFN("couldn't get MAC address");

 MOS_DPRINTFN("address: %s", ether_sprintf(ue->ue_eaddr));

 mos_chip_init(sc);
}

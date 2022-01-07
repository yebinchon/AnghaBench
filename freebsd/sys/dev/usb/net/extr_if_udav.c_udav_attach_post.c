
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct udav_softc {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int UDAV_PAR ;
 int udav_csr_read (struct udav_softc*,int ,int ,int ) ;
 int udav_reset (struct udav_softc*) ;
 struct udav_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
udav_attach_post(struct usb_ether *ue)
{
 struct udav_softc *sc = uether_getsc(ue);


 udav_reset(sc);


 udav_csr_read(sc, UDAV_PAR, ue->ue_eaddr, ETHER_ADDR_LEN);
}

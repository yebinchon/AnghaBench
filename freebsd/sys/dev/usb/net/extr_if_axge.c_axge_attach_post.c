
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct axge_softc {int dummy; } ;


 int AXGE_ACCESS_MAC ;
 int AXGE_NIDR ;
 int ETHER_ADDR_LEN ;
 int axge_chip_init (struct axge_softc*) ;
 int axge_read_mem (struct axge_softc*,int ,int ,int ,int ,int ) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axge_attach_post(struct usb_ether *ue)
{
 struct axge_softc *sc;

 sc = uether_getsc(ue);


 axge_chip_init(sc);
 axge_read_mem(sc, AXGE_ACCESS_MAC, ETHER_ADDR_LEN, AXGE_NIDR,
     ue->ue_eaddr, ETHER_ADDR_LEN);
}

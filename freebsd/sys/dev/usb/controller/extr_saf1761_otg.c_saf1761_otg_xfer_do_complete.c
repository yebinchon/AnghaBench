
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_xfer {struct saf1761_otg_td* td_transfer_cache; } ;
struct saf1761_otg_td {int dummy; } ;
struct saf1761_otg_softc {int dummy; } ;


 int DPRINTFN (int,char*) ;
 int saf1761_otg_standard_done (struct usb_xfer*) ;

__attribute__((used)) static uint8_t
saf1761_otg_xfer_do_complete(struct saf1761_otg_softc *sc, struct usb_xfer *xfer)
{
 struct saf1761_otg_td *td;

 DPRINTFN(9, "\n");

 td = xfer->td_transfer_cache;
 if (td == ((void*)0)) {

  saf1761_otg_standard_done(xfer);
  return (1);
 }
 return (0);
}

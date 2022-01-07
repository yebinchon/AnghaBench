
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct umass_softc {scalar_t__* sc_xfer; } ;


 size_t UMASS_T_CBI_COMMAND ;
 int UMASS_T_CBI_DATA_WRITE ;
 size_t UMASS_T_CBI_RESET4 ;
 size_t UMASS_T_CBI_STATUS ;
 int umass_t_cbi_data_clear_stall_callback (struct usb_xfer*,size_t,int ,int ) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_t_cbi_reset3_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);

 umass_t_cbi_data_clear_stall_callback
     (xfer, (sc->sc_xfer[UMASS_T_CBI_RESET4] &&
     sc->sc_xfer[UMASS_T_CBI_STATUS]) ?
     UMASS_T_CBI_RESET4 : UMASS_T_CBI_COMMAND,
     UMASS_T_CBI_DATA_WRITE, error);
}

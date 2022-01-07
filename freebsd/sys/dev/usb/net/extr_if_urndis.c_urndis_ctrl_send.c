
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct urndis_softc {int sc_ifaceno_ctl; } ;


 int DPRINTF (char*,int ) ;
 int UCDC_SEND_ENCAPSULATED_COMMAND ;
 int UT_WRITE_CLASS_INTERFACE ;
 int urndis_ctrl_msg (struct urndis_softc*,int ,int ,int ,int ,void*,int ) ;
 int usbd_errstr (int ) ;

__attribute__((used)) static usb_error_t
urndis_ctrl_send(struct urndis_softc *sc, void *buf, uint16_t len)
{
 usb_error_t err;

 err = urndis_ctrl_msg(sc, UT_WRITE_CLASS_INTERFACE,
     UCDC_SEND_ENCAPSULATED_COMMAND, sc->sc_ifaceno_ctl, 0, buf, len);

 DPRINTF("%s\n", usbd_errstr(err));

 return (err);
}

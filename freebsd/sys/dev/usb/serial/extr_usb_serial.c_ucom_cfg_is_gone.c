
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ucom_super_softc {int sc_tq; } ;
struct ucom_softc {struct ucom_super_softc* sc_super; } ;


 int usb_proc_is_gone (int *) ;

uint8_t
ucom_cfg_is_gone(struct ucom_softc *sc)
{
 struct ucom_super_softc *ssc = sc->sc_super;

 return (usb_proc_is_gone(&ssc->sc_tq));
}

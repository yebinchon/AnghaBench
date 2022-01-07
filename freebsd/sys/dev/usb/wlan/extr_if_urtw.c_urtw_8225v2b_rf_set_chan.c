
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct urtw_softc {int sc_mtx; } ;


 int URTW_8225_ADDR_7_MAGIC ;
 int * urtw_8225_channel ;
 int urtw_8225_write (struct urtw_softc*,int ,int ) ;
 scalar_t__ urtw_8225v2b_set_txpwrlvl (struct urtw_softc*,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225v2b_rf_set_chan(struct urtw_softc *sc, int chan)
{
 usb_error_t error;

 error = urtw_8225v2b_set_txpwrlvl(sc, chan);
 if (error)
  goto fail;

 urtw_8225_write(sc, URTW_8225_ADDR_7_MAGIC, urtw_8225_channel[chan]);
 usb_pause_mtx(&sc->sc_mtx, 10);
fail:
 return (error);
}

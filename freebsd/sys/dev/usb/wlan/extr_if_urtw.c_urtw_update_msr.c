
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct ieee80211com {int ic_opmode; } ;
struct urtw_softc {scalar_t__ sc_state; int sc_flags; struct ieee80211com sc_ic; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int) ;




 scalar_t__ IEEE80211_S_RUN ;
 int URTW_DEBUG_STATE ;
 int URTW_MSR ;
 int URTW_MSR_LINK_ADHOC ;
 int URTW_MSR_LINK_ENEDCA ;
 int URTW_MSR_LINK_HOSTAP ;
 int URTW_MSR_LINK_MASK ;
 int URTW_MSR_LINK_NONE ;
 int URTW_MSR_LINK_STA ;
 int URTW_RTL8187B ;
 int USB_ERR_INVAL ;
 int urtw_read8_m (struct urtw_softc*,int ,int *) ;
 int urtw_write8_m (struct urtw_softc*,int ,int ) ;

__attribute__((used)) static usb_error_t
urtw_update_msr(struct urtw_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t data;
 usb_error_t error;

 urtw_read8_m(sc, URTW_MSR, &data);
 data &= ~URTW_MSR_LINK_MASK;

 if (sc->sc_state == IEEE80211_S_RUN) {
  switch (ic->ic_opmode) {
  case 128:
  case 129:
   data |= URTW_MSR_LINK_STA;
   if (sc->sc_flags & URTW_RTL8187B)
    data |= URTW_MSR_LINK_ENEDCA;
   break;
  case 130:
   data |= URTW_MSR_LINK_ADHOC;
   break;
  case 131:
   data |= URTW_MSR_LINK_HOSTAP;
   break;
  default:
   DPRINTF(sc, URTW_DEBUG_STATE,
       "unsupported operation mode 0x%x\n",
       ic->ic_opmode);
   error = USB_ERR_INVAL;
   goto fail;
  }
 } else
  data |= URTW_MSR_LINK_NONE;

 urtw_write8_m(sc, URTW_MSR, data);
fail:
 return (error);
}

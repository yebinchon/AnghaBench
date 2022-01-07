
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct usb_xfer {int dummy; } ;
struct ieee80211com {int ic_oerrors; } ;
struct urtw_softc {int sc_txstatus; struct ieee80211com sc_ic; } ;


 int DPRINTF (struct urtw_softc*,int ,char*,int,int) ;
 int URTW_DEBUG_TXSTATUS ;
 int URTW_STATUS_TYPE_TXCLOSE ;
 int URTW_TX_MAXRETRY ;
 int counter_u64_add (int ,int) ;
 int le64toh (int ) ;
 struct urtw_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
urtw_txstatus_eof(struct usb_xfer *xfer)
{
 struct urtw_softc *sc = usbd_xfer_softc(xfer);
 struct ieee80211com *ic = &sc->sc_ic;
 int actlen, type, pktretry, seq;
 uint64_t val;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 if (actlen != sizeof(uint64_t))
  return;

 val = le64toh(sc->sc_txstatus);
 type = (val >> 30) & 0x3;
 if (type == URTW_STATUS_TYPE_TXCLOSE) {
  pktretry = val & 0xff;
  seq = (val >> 16) & 0xff;
  if (pktretry == URTW_TX_MAXRETRY)
   counter_u64_add(ic->ic_oerrors, 1);
  DPRINTF(sc, URTW_DEBUG_TXSTATUS, "pktretry %d seq %#x\n",
      pktretry, seq);
 }
}

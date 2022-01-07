
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct otus_softc {int dummy; } ;
struct otus_data {scalar_t__ buf; } ;
struct mbufq {int dummy; } ;
struct ar_rx_head {scalar_t__ tag; scalar_t__ len; } ;
typedef scalar_t__ caddr_t ;


 int AR_RX_HEAD_TAG ;
 int OTUS_DEBUG_RXDONE ;
 int OTUS_DPRINTF (struct otus_softc*,int ,char*,int,...) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ htole16 (int ) ;
 int le16toh (scalar_t__) ;
 int otus_sub_rxeof (struct otus_softc*,int *,int,struct mbufq*) ;
 struct otus_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
otus_rxeof(struct usb_xfer *xfer, struct otus_data *data, struct mbufq *rxq)
{
 struct otus_softc *sc = usbd_xfer_softc(xfer);
 caddr_t buf = data->buf;
 struct ar_rx_head *head;
 uint16_t hlen;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 while (len >= sizeof (*head)) {
  head = (struct ar_rx_head *)buf;
  if (__predict_false(head->tag != htole16(AR_RX_HEAD_TAG))) {
   OTUS_DPRINTF(sc, OTUS_DEBUG_RXDONE,
       "tag not valid 0x%x\n", le16toh(head->tag));
   break;
  }
  hlen = le16toh(head->len);
  if (__predict_false(sizeof (*head) + hlen > len)) {
   OTUS_DPRINTF(sc, OTUS_DEBUG_RXDONE,
       "xfer too short %d/%d\n", len, hlen);
   break;
  }

  otus_sub_rxeof(sc, (uint8_t *)&head[1], hlen, rxq);


  hlen = (sizeof (*head) + hlen + 3) & ~3;
  buf += hlen;
  len -= hlen;
 }
}

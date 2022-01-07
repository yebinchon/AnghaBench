
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct urndis_softc {scalar_t__ sc_response_buf; int sc_ifaceno_ctl; } ;
struct rndis_comp_hdr {int rm_len; int rm_type; } ;


 int DPRINTF (char*,scalar_t__,scalar_t__) ;
 scalar_t__ RNDIS_RESPONSE_LEN ;
 int UCDC_GET_ENCAPSULATED_RESPONSE ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int UT_READ_CLASS_INTERFACE ;
 scalar_t__ le32toh (int ) ;
 scalar_t__ urndis_ctrl_msg (struct urndis_softc*,int ,int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct rndis_comp_hdr *
urndis_ctrl_recv(struct urndis_softc *sc)
{
 struct rndis_comp_hdr *hdr;
 usb_error_t err;

 err = urndis_ctrl_msg(sc, UT_READ_CLASS_INTERFACE,
     UCDC_GET_ENCAPSULATED_RESPONSE, sc->sc_ifaceno_ctl, 0,
     sc->sc_response_buf, RNDIS_RESPONSE_LEN);

 if (err != USB_ERR_NORMAL_COMPLETION)
  return (((void*)0));

 hdr = (struct rndis_comp_hdr *)sc->sc_response_buf;

 DPRINTF("type 0x%x len %u\n", le32toh(hdr->rm_type),
     le32toh(hdr->rm_len));

 if (le32toh(hdr->rm_len) > RNDIS_RESPONSE_LEN) {
  DPRINTF("ctrl message error: wrong size %u > %u\n",
      le32toh(hdr->rm_len), RNDIS_RESPONSE_LEN);
  return (((void*)0));
 }
 return (hdr);
}

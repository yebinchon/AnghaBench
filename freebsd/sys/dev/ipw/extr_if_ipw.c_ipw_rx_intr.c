
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ipw_status {int code; int flags; int len; } ;
struct ipw_softc {int flags; int rxcur; int rbd_map; int rbd_dmat; int sc_dev; struct ipw_soft_bd* srbd_list; struct ipw_status* status_list; int status_map; int status_dmat; } ;
struct ipw_soft_buf {int dummy; } ;
struct ipw_soft_bd {TYPE_1__* bd; struct ipw_soft_buf* priv; } ;
struct TYPE_2__ {scalar_t__ flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct ipw_softc*,int ) ;
 int CSR_WRITE_4 (struct ipw_softc*,int ,int) ;
 int DPRINTFN (int,char*) ;
 int IPW_CSR_RX_READ ;
 int IPW_CSR_RX_WRITE ;
 int IPW_FLAG_FW_INITED ;
 int IPW_NRBD ;





 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int ipw_rx_cmd_intr (struct ipw_softc*,struct ipw_soft_buf*) ;
 int ipw_rx_data_intr (struct ipw_softc*,struct ipw_status*,struct ipw_soft_bd*,struct ipw_soft_buf*) ;
 int ipw_rx_newstate_intr (struct ipw_softc*,struct ipw_soft_buf*) ;
 int le16toh (int ) ;
 int le32toh (int ) ;

__attribute__((used)) static void
ipw_rx_intr(struct ipw_softc *sc)
{
 struct ipw_status *status;
 struct ipw_soft_bd *sbd;
 struct ipw_soft_buf *sbuf;
 uint32_t r, i;

 if (!(sc->flags & IPW_FLAG_FW_INITED))
  return;

 r = CSR_READ_4(sc, IPW_CSR_RX_READ);

 bus_dmamap_sync(sc->status_dmat, sc->status_map, BUS_DMASYNC_POSTREAD);

 for (i = (sc->rxcur + 1) % IPW_NRBD; i != r; i = (i + 1) % IPW_NRBD) {
  status = &sc->status_list[i];
  sbd = &sc->srbd_list[i];
  sbuf = sbd->priv;

  switch (le16toh(status->code) & 0xf) {
  case 132:
   ipw_rx_cmd_intr(sc, sbuf);
   break;

  case 129:
   ipw_rx_newstate_intr(sc, sbuf);
   break;

  case 130:
  case 131:
   ipw_rx_data_intr(sc, status, sbd, sbuf);
   break;

  case 128:
   DPRINTFN(2, ("notification status, len %u flags 0x%x\n",
       le32toh(status->len), status->flags));

   break;

  default:
   device_printf(sc->sc_dev, "unexpected status code %u\n",
       le16toh(status->code));
  }


  if (!(sc->flags & IPW_FLAG_FW_INITED))
   return;

  sbd->bd->flags = 0;
 }

 bus_dmamap_sync(sc->rbd_dmat, sc->rbd_map, BUS_DMASYNC_PREWRITE);


 sc->rxcur = (r == 0) ? IPW_NRBD - 1 : r - 1;
 CSR_WRITE_4(sc, IPW_CSR_RX_WRITE, sc->rxcur);
}

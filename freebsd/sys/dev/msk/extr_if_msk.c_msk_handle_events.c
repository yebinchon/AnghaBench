
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct msk_stat_desc {int msk_status; int msk_control; } ;
struct msk_softc {int msk_stat_cons; int msk_process_limit; struct msk_if_softc** msk_if; int msk_stat_map; int msk_stat_tag; int msk_stat_count; int msk_dev; struct msk_stat_desc* msk_stat_ring; } ;
struct TYPE_4__ {int msk_rx_putwm; } ;
struct msk_if_softc {int msk_csum; TYPE_2__ msk_cdata; scalar_t__ msk_framesize; TYPE_1__* msk_ifp; void* msk_vtag; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_2 (struct msk_softc*,int ) ;
 int HW_OWNER ;
 int IFF_DRV_RUNNING ;
 scalar_t__ MCLBYTES ;
 int MSK_INC (int,int ) ;
 size_t MSK_PORT_A ;
 size_t MSK_PORT_B ;
 scalar_t__ MSK_RX_BUF_ALIGN ;





 int STAT_PUT_IDX ;
 int STLE_LEN_MASK ;
 int STLE_OP_MASK ;
 int STLE_TXA1_MSKL ;
 int STLE_TXA2_MSKH ;
 int STLE_TXA2_MSKL ;
 int STLE_TXA2_SHIFTH ;
 int STLE_TXA2_SHIFTL ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*,int) ;
 int htole32 (int) ;
 int le32toh (int ) ;
 int msk_jumbo_rxeof (struct msk_if_softc*,int,int,int) ;
 int msk_rxeof (struct msk_if_softc*,int,int,int) ;
 int msk_rxput (struct msk_if_softc*) ;
 int msk_txeof (struct msk_if_softc*,int) ;
 void* ntohs (int) ;

__attribute__((used)) static int
msk_handle_events(struct msk_softc *sc)
{
 struct msk_if_softc *sc_if;
 int rxput[2];
 struct msk_stat_desc *sd;
 uint32_t control, status;
 int cons, len, port, rxprog;

 if (sc->msk_stat_cons == CSR_READ_2(sc, STAT_PUT_IDX))
  return (0);


 bus_dmamap_sync(sc->msk_stat_tag, sc->msk_stat_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 rxput[MSK_PORT_A] = rxput[MSK_PORT_B] = 0;
 rxprog = 0;
 cons = sc->msk_stat_cons;
 for (;;) {
  sd = &sc->msk_stat_ring[cons];
  control = le32toh(sd->msk_control);
  if ((control & HW_OWNER) == 0)
   break;
  control &= ~HW_OWNER;
  sd->msk_control = htole32(control);
  status = le32toh(sd->msk_status);
  len = control & STLE_LEN_MASK;
  port = (control >> 16) & 0x01;
  sc_if = sc->msk_if[port];
  if (sc_if == ((void*)0)) {
   device_printf(sc->msk_dev, "invalid port opcode "
       "0x%08x\n", control & STLE_OP_MASK);
   continue;
  }

  switch (control & STLE_OP_MASK) {
  case 129:
   sc_if->msk_vtag = ntohs(len);
   break;
  case 131:
   sc_if->msk_vtag = ntohs(len);

  case 132:
   sc_if->msk_csum = status;
   break;
  case 130:
   if (!(sc_if->msk_ifp->if_drv_flags & IFF_DRV_RUNNING))
    break;
   if (sc_if->msk_framesize >
       (MCLBYTES - MSK_RX_BUF_ALIGN))
    msk_jumbo_rxeof(sc_if, status, control, len);
   else
    msk_rxeof(sc_if, status, control, len);
   rxprog++;





   rxput[port]++;

   if (rxput[port] >= sc_if->msk_cdata.msk_rx_putwm) {
    msk_rxput(sc_if);
    rxput[port] = 0;
   }
   break;
  case 128:
   if (sc->msk_if[MSK_PORT_A] != ((void*)0))
    msk_txeof(sc->msk_if[MSK_PORT_A],
        status & STLE_TXA1_MSKL);
   if (sc->msk_if[MSK_PORT_B] != ((void*)0))
    msk_txeof(sc->msk_if[MSK_PORT_B],
        ((status & STLE_TXA2_MSKL) >>
        STLE_TXA2_SHIFTL) |
        ((len & STLE_TXA2_MSKH) <<
        STLE_TXA2_SHIFTH));
   break;
  default:
   device_printf(sc->msk_dev, "unhandled opcode 0x%08x\n",
       control & STLE_OP_MASK);
   break;
  }
  MSK_INC(cons, sc->msk_stat_count);
  if (rxprog > sc->msk_process_limit)
   break;
 }

 sc->msk_stat_cons = cons;
 bus_dmamap_sync(sc->msk_stat_tag, sc->msk_stat_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 if (rxput[MSK_PORT_A] > 0)
  msk_rxput(sc->msk_if[MSK_PORT_A]);
 if (rxput[MSK_PORT_B] > 0)
  msk_rxput(sc->msk_if[MSK_PORT_B]);

 return (sc->msk_stat_cons != CSR_READ_2(sc, STAT_PUT_IDX));
}

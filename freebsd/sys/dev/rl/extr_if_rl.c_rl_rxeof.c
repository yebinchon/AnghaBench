
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int * rl_rx_buf; int rl_rx_dmamap; int rl_rx_tag; } ;
struct rl_softc {scalar_t__ rxcycles; TYPE_1__ rl_cdata; struct ifnet* rl_ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_READ_2 (struct rl_softc*,int ) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int ETHER_CRC_LEN ;
 int ETHER_MAX_LEN ;
 int ETHER_MIN_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_POLLING ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int RL_CMD_EMPTY_RXBUF ;
 int RL_COMMAND ;
 int RL_CURRXADDR ;
 int RL_CURRXBUF ;
 int RL_ETHER_ALIGN ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_RXBUFLEN ;
 int RL_RXSTAT_RXOK ;
 int RL_RXSTAT_UNFINISHED ;
 int RL_UNLOCK (struct rl_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int) ;
 int m_copyback (struct mbuf*,int,int,int *) ;
 struct mbuf* m_devget (int *,int,int ,struct ifnet*,int *) ;
 int rl_init_locked (struct rl_softc*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
rl_rxeof(struct rl_softc *sc)
{
 struct mbuf *m;
 struct ifnet *ifp = sc->rl_ifp;
 uint8_t *rxbufpos;
 int total_len = 0;
 int wrap = 0;
 int rx_npkts = 0;
 uint32_t rxstat;
 uint16_t cur_rx;
 uint16_t limit;
 uint16_t max_bytes, rx_bytes = 0;

 RL_LOCK_ASSERT(sc);

 bus_dmamap_sync(sc->rl_cdata.rl_rx_tag, sc->rl_cdata.rl_rx_dmamap,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 cur_rx = (CSR_READ_2(sc, RL_CURRXADDR) + 16) % RL_RXBUFLEN;


 limit = CSR_READ_2(sc, RL_CURRXBUF) % RL_RXBUFLEN;

 if (limit < cur_rx)
  max_bytes = (RL_RXBUFLEN - cur_rx) + limit;
 else
  max_bytes = limit - cur_rx;

 while((CSR_READ_1(sc, RL_COMMAND) & RL_CMD_EMPTY_RXBUF) == 0) {







  rxbufpos = sc->rl_cdata.rl_rx_buf + cur_rx;
  rxstat = le32toh(*(uint32_t *)rxbufpos);
  total_len = rxstat >> 16;
  if (total_len == RL_RXSTAT_UNFINISHED)
   break;

  if (!(rxstat & RL_RXSTAT_RXOK) ||
      total_len < ETHER_MIN_LEN ||
      total_len > ETHER_MAX_LEN + ETHER_VLAN_ENCAP_LEN) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   rl_init_locked(sc);
   return (rx_npkts);
  }


  rx_bytes += total_len + 4;
  total_len -= ETHER_CRC_LEN;





  if (rx_bytes > max_bytes)
   break;

  rxbufpos = sc->rl_cdata.rl_rx_buf +
   ((cur_rx + sizeof(uint32_t)) % RL_RXBUFLEN);
  if (rxbufpos == (sc->rl_cdata.rl_rx_buf + RL_RXBUFLEN))
   rxbufpos = sc->rl_cdata.rl_rx_buf;

  wrap = (sc->rl_cdata.rl_rx_buf + RL_RXBUFLEN) - rxbufpos;
  if (total_len > wrap) {
   m = m_devget(rxbufpos, total_len, RL_ETHER_ALIGN, ifp,
       ((void*)0));
   if (m != ((void*)0))
    m_copyback(m, wrap, total_len - wrap,
     sc->rl_cdata.rl_rx_buf);
   cur_rx = (total_len - wrap + ETHER_CRC_LEN);
  } else {
   m = m_devget(rxbufpos, total_len, RL_ETHER_ALIGN, ifp,
       ((void*)0));
   cur_rx += total_len + 4 + ETHER_CRC_LEN;
  }


  cur_rx = (cur_rx + 3) & ~3;
  CSR_WRITE_2(sc, RL_CURRXADDR, cur_rx - 16);

  if (m == ((void*)0)) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   continue;
  }

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  RL_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  RL_LOCK(sc);
  rx_npkts++;
 }


 return (rx_npkts);
}

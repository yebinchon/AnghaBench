
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2560_tx_desc {int flags; int eiv; } ;
struct TYPE_2__ {int physaddr; int next_encrypt; int cur_encrypt; int desc_map; int desc_dmat; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_1__ txq; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int DPRINTFN (struct rt2560_softc*,int,char*,size_t) ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int ) ;
 int RT2560_KICK_TX ;
 int RT2560_SECCSR1 ;
 int RT2560_TXCSR0 ;
 int RT2560_TX_BUSY ;
 int RT2560_TX_CIPHER_BUSY ;
 int RT2560_TX_CIPHER_MASK ;
 int RT2560_TX_CIPHER_TKIP ;
 int RT2560_TX_DESC_SIZE ;
 int RT2560_TX_RING_COUNT ;
 int RT2560_TX_VALID ;
 int bswap32 (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole32 (int) ;
 int le32toh (int ) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
rt2560_encryption_intr(struct rt2560_softc *sc)
{
 struct rt2560_tx_desc *desc;
 int hw;


 hw = RAL_READ(sc, RT2560_SECCSR1) - sc->txq.physaddr;
 hw /= RT2560_TX_DESC_SIZE;

 bus_dmamap_sync(sc->txq.desc_dmat, sc->txq.desc_map,
     BUS_DMASYNC_POSTREAD);

 while (sc->txq.next_encrypt != hw) {
  if (sc->txq.next_encrypt == sc->txq.cur_encrypt) {
   printf("hw encrypt %d, cur_encrypt %d\n", hw,
       sc->txq.cur_encrypt);
   break;
  }

  desc = &sc->txq.desc[sc->txq.next_encrypt];

  if ((le32toh(desc->flags) & RT2560_TX_BUSY) ||
      (le32toh(desc->flags) & RT2560_TX_CIPHER_BUSY))
   break;


  if ((le32toh(desc->flags) & RT2560_TX_CIPHER_MASK) ==
      RT2560_TX_CIPHER_TKIP)
   desc->eiv = bswap32(desc->eiv);


  desc->flags |= htole32(RT2560_TX_VALID);
  desc->flags |= htole32(RT2560_TX_BUSY);

  DPRINTFN(sc, 15, "encryption done idx=%u\n",
      sc->txq.next_encrypt);

  sc->txq.next_encrypt =
      (sc->txq.next_encrypt + 1) % RT2560_TX_RING_COUNT;
 }

 bus_dmamap_sync(sc->txq.desc_dmat, sc->txq.desc_map,
     BUS_DMASYNC_PREWRITE);


 RAL_WRITE(sc, RT2560_TXCSR0, RT2560_KICK_TX);
}

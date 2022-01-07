
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_txbuf_data {scalar_t__ tbd_used; scalar_t__ tbd_idx; } ;
struct bwi_softc {int sc_txring_dtag; struct bwi_txbuf_data* sc_tx_bdata; struct bwi_ring_data* sc_tx_rdata; } ;
struct bwi_ring_data {scalar_t__ rdata_txrx_ctrl; int rdata_paddr; int rdata_dmap; int rdata_desc; } ;
struct bwi_desc32 {int dummy; } ;


 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ BWI_TX32_CTRL ;
 scalar_t__ BWI_TX32_RINGINFO ;
 int BWI_TXRX32_CTRL_ADDRHI_MASK ;
 int BWI_TXRX32_CTRL_ENABLE ;
 int BWI_TXRX32_RINGINFO_ADDR_MASK ;
 int BWI_TXRX32_RINGINFO_FUNC_MASK ;
 int BWI_TXRX32_RINGINFO_FUNC_TXRX ;
 int BWI_TX_NDESC ;
 int BWI_TX_NRING ;
 int CSR_WRITE_4 (struct bwi_softc*,scalar_t__,int) ;
 int KASSERT (int,char*) ;
 int __SHIFTIN (int,int ) ;
 int __SHIFTOUT (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int ,int) ;

__attribute__((used)) static int
bwi_init_tx_ring32(struct bwi_softc *sc, int ring_idx)
{
 struct bwi_ring_data *rd;
 struct bwi_txbuf_data *tbd;
 uint32_t val, addr_hi, addr_lo;

 KASSERT(ring_idx < BWI_TX_NRING, ("ring_idx %d", ring_idx));
 rd = &sc->sc_tx_rdata[ring_idx];
 tbd = &sc->sc_tx_bdata[ring_idx];

 tbd->tbd_idx = 0;
 tbd->tbd_used = 0;

 bzero(rd->rdata_desc, sizeof(struct bwi_desc32) * BWI_TX_NDESC);
 bus_dmamap_sync(sc->sc_txring_dtag, rd->rdata_dmap,
   BUS_DMASYNC_PREWRITE);

 addr_lo = __SHIFTOUT(rd->rdata_paddr, BWI_TXRX32_RINGINFO_ADDR_MASK);
 addr_hi = __SHIFTOUT(rd->rdata_paddr, BWI_TXRX32_RINGINFO_FUNC_MASK);

 val = __SHIFTIN(addr_lo, BWI_TXRX32_RINGINFO_ADDR_MASK) |
       __SHIFTIN(BWI_TXRX32_RINGINFO_FUNC_TXRX,
         BWI_TXRX32_RINGINFO_FUNC_MASK);
 CSR_WRITE_4(sc, rd->rdata_txrx_ctrl + BWI_TX32_RINGINFO, val);

 val = __SHIFTIN(addr_hi, BWI_TXRX32_CTRL_ADDRHI_MASK) |
       BWI_TXRX32_CTRL_ENABLE;
 CSR_WRITE_4(sc, rd->rdata_txrx_ctrl + BWI_TX32_CTRL, val);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ rdata_txrx_ctrl; } ;
struct bwi_softc {TYPE_1__ sc_rx_rdata; } ;
struct bwi_desc32 {int dummy; } ;


 scalar_t__ BWI_RX32_INDEX ;
 scalar_t__ BWI_RX32_STATUS ;
 int BWI_RX32_STATUS_INDEX_MASK ;
 scalar_t__ CSR_READ_4 (struct bwi_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct bwi_softc*,scalar_t__,int) ;
 int __SHIFTOUT (scalar_t__,int ) ;
 int bwi_rxeof (struct bwi_softc*,int) ;

__attribute__((used)) static int
bwi_rxeof32(struct bwi_softc *sc)
{
 uint32_t val, rx_ctrl;
 int end_idx, rx_data;

 rx_ctrl = sc->sc_rx_rdata.rdata_txrx_ctrl;

 val = CSR_READ_4(sc, rx_ctrl + BWI_RX32_STATUS);
 end_idx = __SHIFTOUT(val, BWI_RX32_STATUS_INDEX_MASK) /
    sizeof(struct bwi_desc32);

 rx_data = bwi_rxeof(sc, end_idx);
 if (rx_data >= 0) {
  CSR_WRITE_4(sc, rx_ctrl + BWI_RX32_INDEX,
       end_idx * sizeof(struct bwi_desc32));
 }
 return rx_data;
}

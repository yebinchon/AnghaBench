
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_desc32 {int dummy; } ;


 scalar_t__ BWI_TX32_INDEX ;
 int BWI_TX_NDESC ;
 int CSR_WRITE_4 (struct bwi_softc*,scalar_t__,int) ;

__attribute__((used)) static void
bwi_start_tx32(struct bwi_softc *sc, uint32_t tx_ctrl, int idx)
{
 idx = (idx + 1) % BWI_TX_NDESC;
 CSR_WRITE_4(sc, tx_ctrl + BWI_TX32_INDEX,
      idx * sizeof(struct bwi_desc32));
}

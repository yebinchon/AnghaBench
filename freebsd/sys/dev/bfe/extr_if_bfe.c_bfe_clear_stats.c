
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bfe_softc {int dummy; } ;


 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_MIB_CLR_ON_READ ;
 int BFE_MIB_CTRL ;
 scalar_t__ BFE_RX_GOOD_O ;
 scalar_t__ BFE_RX_NPAUSE ;
 scalar_t__ BFE_TX_GOOD_O ;
 scalar_t__ BFE_TX_PAUSE ;
 int CSR_READ_4 (struct bfe_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int ) ;

__attribute__((used)) static void
bfe_clear_stats(struct bfe_softc *sc)
{
 uint32_t reg;

 BFE_LOCK_ASSERT(sc);

 CSR_WRITE_4(sc, BFE_MIB_CTRL, BFE_MIB_CLR_ON_READ);
 for (reg = BFE_TX_GOOD_O; reg <= BFE_TX_PAUSE; reg += 4)
  CSR_READ_4(sc, reg);
 for (reg = BFE_RX_GOOD_O; reg <= BFE_RX_NPAUSE; reg += 4)
  CSR_READ_4(sc, reg);
}

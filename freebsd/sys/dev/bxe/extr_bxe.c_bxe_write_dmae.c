
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmae_cmd {int dst_addr_lo; int len; scalar_t__ dst_addr_hi; int src_addr_hi; int src_addr_lo; } ;
struct bxe_softc {int dmae_ready; } ;
typedef int bus_addr_t ;


 int BXE_SP (struct bxe_softc*,int ) ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int DBASSERT (struct bxe_softc*,int,char*) ;
 int DMAE_DST_GRC ;
 int DMAE_SRC_PCI ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bxe_issue_dmae_with_comp (struct bxe_softc*,struct dmae_cmd*) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int bxe_prep_dmae_with_comp (struct bxe_softc*,struct dmae_cmd*,int ,int ) ;
 int ecore_init_ind_wr (struct bxe_softc*,int,int ,int) ;
 int ecore_init_str_wr (struct bxe_softc*,int,int ,int) ;
 int * wb_data ;

void
bxe_write_dmae(struct bxe_softc *sc,
               bus_addr_t dma_addr,
               uint32_t dst_addr,
               uint32_t len32)
{
    struct dmae_cmd dmae;
    int rc;

    if (!sc->dmae_ready) {
        DBASSERT(sc, (len32 <= 4), ("DMAE not ready and length is %d", len32));

        if (CHIP_IS_E1(sc)) {
            ecore_init_ind_wr(sc, dst_addr, BXE_SP(sc, wb_data[0]), len32);
        } else {
            ecore_init_str_wr(sc, dst_addr, BXE_SP(sc, wb_data[0]), len32);
        }

        return;
    }


    bxe_prep_dmae_with_comp(sc, &dmae, DMAE_SRC_PCI, DMAE_DST_GRC);


    dmae.src_addr_lo = U64_LO(dma_addr);
    dmae.src_addr_hi = U64_HI(dma_addr);
    dmae.dst_addr_lo = (dst_addr >> 2);
    dmae.dst_addr_hi = 0;
    dmae.len = len32;


    if ((rc = bxe_issue_dmae_with_comp(sc, &dmae)) != 0) {
        bxe_panic(sc, ("DMAE failed (%d)\n", rc));
    }
}

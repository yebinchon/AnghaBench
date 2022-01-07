
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmae_cmd {int src_addr_lo; int len; int dst_addr_hi; int dst_addr_lo; scalar_t__ src_addr_hi; } ;
struct bxe_softc {int dmae_ready; } ;


 int* BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_MAPPING (struct bxe_softc*,int *) ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int DBASSERT (struct bxe_softc*,int,char*) ;
 int DMAE_DST_PCI ;
 int DMAE_SRC_GRC ;
 int REG_RD (struct bxe_softc*,int) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bxe_issue_dmae_with_comp (struct bxe_softc*,struct dmae_cmd*) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int bxe_prep_dmae_with_comp (struct bxe_softc*,struct dmae_cmd*,int ,int ) ;
 int bxe_reg_rd_ind (struct bxe_softc*,int) ;
 int * wb_data ;

void
bxe_read_dmae(struct bxe_softc *sc,
              uint32_t src_addr,
              uint32_t len32)
{
    struct dmae_cmd dmae;
    uint32_t *data;
    int i, rc;

    DBASSERT(sc, (len32 <= 4), ("DMAE read length is %d", len32));

    if (!sc->dmae_ready) {
        data = BXE_SP(sc, wb_data[0]);

        for (i = 0; i < len32; i++) {
            data[i] = (CHIP_IS_E1(sc)) ?
                          bxe_reg_rd_ind(sc, (src_addr + (i * 4))) :
                          REG_RD(sc, (src_addr + (i * 4)));
        }

        return;
    }


    bxe_prep_dmae_with_comp(sc, &dmae, DMAE_SRC_GRC, DMAE_DST_PCI);


    dmae.src_addr_lo = (src_addr >> 2);
    dmae.src_addr_hi = 0;
    dmae.dst_addr_lo = U64_LO(BXE_SP_MAPPING(sc, wb_data));
    dmae.dst_addr_hi = U64_HI(BXE_SP_MAPPING(sc, wb_data));
    dmae.len = len32;


    if ((rc = bxe_issue_dmae_with_comp(sc, &dmae)) != 0) {
        bxe_panic(sc, ("DMAE failed (%d)\n", rc));
    }
}

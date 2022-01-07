
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dmae_cmd {int comp_val; int comp_addr_hi; int comp_addr_lo; int opcode; } ;
struct bxe_softc {int dummy; } ;


 int BXE_SP_MAPPING (struct bxe_softc*,int ) ;
 int DMAE_COMP_PCI ;
 int DMAE_COMP_VAL ;
 int TRUE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bxe_dmae_opcode (struct bxe_softc*,int ,int ,int ,int ) ;
 int memset (struct dmae_cmd*,int ,int) ;
 int wb_comp ;

__attribute__((used)) static void
bxe_prep_dmae_with_comp(struct bxe_softc *sc,
                        struct dmae_cmd *dmae,
                        uint8_t src_type,
                        uint8_t dst_type)
{
    memset(dmae, 0, sizeof(struct dmae_cmd));


    dmae->opcode = bxe_dmae_opcode(sc, src_type, dst_type,
                                   TRUE, DMAE_COMP_PCI);


    dmae->comp_addr_lo = U64_LO(BXE_SP_MAPPING(sc, wb_comp));
    dmae->comp_addr_hi = U64_HI(BXE_SP_MAPPING(sc, wb_comp));
    dmae->comp_val = DMAE_COMP_VAL;
}

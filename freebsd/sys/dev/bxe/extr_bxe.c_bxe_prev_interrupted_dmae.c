
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 int DBG_LOAD ;
 int PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN ;
 int PGLUE_B_REG_PGLUE_B_INT_STS ;
 int PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_FUNC (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_prev_interrupted_dmae(struct bxe_softc *sc)
{
    uint32_t val;

    if (!CHIP_IS_E1x(sc)) {
        val = REG_RD(sc, PGLUE_B_REG_PGLUE_B_INT_STS);
        if (val & PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN) {
            BLOGD(sc, DBG_LOAD,
                  "Clearing 'was-error' bit that was set in pglueb");
            REG_WR(sc, PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR, 1 << SC_FUNC(sc));
        }
    }
}

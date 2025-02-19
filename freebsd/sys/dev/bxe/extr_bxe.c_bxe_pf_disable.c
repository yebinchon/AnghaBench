
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int CFC_REG_WEAK_ENABLE_PF ;
 int IGU_PF_CONF_FUNC_EN ;
 int IGU_REG_PF_CONFIGURATION ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_pf_disable(struct bxe_softc *sc)
{
    uint32_t val = REG_RD(sc, IGU_REG_PF_CONFIGURATION);

    val &= ~IGU_PF_CONF_FUNC_EN;

    REG_WR(sc, IGU_REG_PF_CONFIGURATION, val);
    REG_WR(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 0);
    REG_WR(sc, CFC_REG_WEAK_ENABLE_PF, 0);
}

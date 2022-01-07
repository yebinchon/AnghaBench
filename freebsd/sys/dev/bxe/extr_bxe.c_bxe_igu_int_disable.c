
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_INTR ;
 int IGU_PF_CONF_ATTN_BIT_EN ;
 int IGU_PF_CONF_INT_LINE_EN ;
 int IGU_PF_CONF_MSI_MSIX_EN ;
 int IGU_REG_PF_CONFIGURATION ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int mb () ;

__attribute__((used)) static void
bxe_igu_int_disable(struct bxe_softc *sc)
{
    uint32_t val = REG_RD(sc, IGU_REG_PF_CONFIGURATION);

    val &= ~(IGU_PF_CONF_MSI_MSIX_EN |
             IGU_PF_CONF_INT_LINE_EN |
             IGU_PF_CONF_ATTN_BIT_EN);

    BLOGD(sc, DBG_INTR, "write %x to IGU\n", val);


    mb();

    REG_WR(sc, IGU_REG_PF_CONFIGURATION, val);
    if (REG_RD(sc, IGU_REG_PF_CONFIGURATION) != val) {
        BLOGE(sc, "proper val not read from IGU!\n");
    }
}

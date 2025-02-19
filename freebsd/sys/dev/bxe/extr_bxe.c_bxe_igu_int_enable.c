
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {scalar_t__ interrupt_mode; int intr_count; TYPE_1__ port; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,char*) ;
 int DBG_INTR ;
 scalar_t__ FALSE ;
 int IGU_PF_CONF_ATTN_BIT_EN ;
 int IGU_PF_CONF_FUNC_EN ;
 int IGU_PF_CONF_INT_LINE_EN ;
 int IGU_PF_CONF_MSI_MSIX_EN ;
 int IGU_PF_CONF_SINGLE_ISR_EN ;
 int IGU_REG_LEADING_EDGE_LATCH ;
 int IGU_REG_PF_CONFIGURATION ;
 int IGU_REG_TRAILING_EDGE_LATCH ;
 scalar_t__ INTR_MODE_MSI ;
 scalar_t__ INTR_MODE_MSIX ;
 scalar_t__ IS_MF (struct bxe_softc*) ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_VN (struct bxe_softc*) ;
 scalar_t__ TRUE ;
 int bxe_ack_int (struct bxe_softc*) ;
 int mb () ;

__attribute__((used)) static void
bxe_igu_int_enable(struct bxe_softc *sc)
{
    uint32_t val;
    uint8_t msix = (sc->interrupt_mode == INTR_MODE_MSIX) ? TRUE : FALSE;
    uint8_t single_msix = ((sc->interrupt_mode == INTR_MODE_MSIX) &&
                           (sc->intr_count == 1)) ? TRUE : FALSE;
    uint8_t msi = (sc->interrupt_mode == INTR_MODE_MSI) ? TRUE : FALSE;

    val = REG_RD(sc, IGU_REG_PF_CONFIGURATION);

    if (msix) {
        val &= ~(IGU_PF_CONF_INT_LINE_EN |
                 IGU_PF_CONF_SINGLE_ISR_EN);
        val |= (IGU_PF_CONF_MSI_MSIX_EN |
                IGU_PF_CONF_ATTN_BIT_EN);
        if (single_msix) {
            val |= IGU_PF_CONF_SINGLE_ISR_EN;
        }
    } else if (msi) {
        val &= ~IGU_PF_CONF_INT_LINE_EN;
        val |= (IGU_PF_CONF_MSI_MSIX_EN |
                IGU_PF_CONF_ATTN_BIT_EN |
                IGU_PF_CONF_SINGLE_ISR_EN);
    } else {
        val &= ~IGU_PF_CONF_MSI_MSIX_EN;
        val |= (IGU_PF_CONF_INT_LINE_EN |
                IGU_PF_CONF_ATTN_BIT_EN |
                IGU_PF_CONF_SINGLE_ISR_EN);
    }


    if ((!msix) || single_msix) {
        REG_WR(sc, IGU_REG_PF_CONFIGURATION, val);
        bxe_ack_int(sc);
    }

    val |= IGU_PF_CONF_FUNC_EN;

    BLOGD(sc, DBG_INTR, "write 0x%x to IGU mode %s\n",
          val, ((msix) ? "MSI-X" : ((msi) ? "MSI" : "INTx")));

    REG_WR(sc, IGU_REG_PF_CONFIGURATION, val);

    mb();


    if (IS_MF(sc)) {
        val = (0xee0f | (1 << (SC_VN(sc) + 4)));
        if (sc->port.pmf) {

            val |= 0x1100;
        }
    } else {
        val = 0xffff;
    }

    REG_WR(sc, IGU_REG_TRAILING_EDGE_LATCH, val);
    REG_WR(sc, IGU_REG_LEADING_EDGE_LATCH, val);


    mb();
}

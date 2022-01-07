
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ) ;
 int CFC_REG_WEAK_ENABLE_PF ;
 int DBG_LOAD ;
 int IGU_REG_PCI_PF_MSIX_EN ;
 int IGU_REG_PCI_PF_MSIX_FUNC_MASK ;
 int IGU_REG_PCI_PF_MSI_EN ;
 int PBF_REG_DISABLE_PF ;
 int PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR ;
 int REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_hw_enable_status(struct bxe_softc *sc)
{
    uint32_t val;

    val = REG_RD(sc, CFC_REG_WEAK_ENABLE_PF);
    BLOGD(sc, DBG_LOAD, "CFC_REG_WEAK_ENABLE_PF is 0x%x\n", val);

    val = REG_RD(sc, PBF_REG_DISABLE_PF);
    BLOGD(sc, DBG_LOAD, "PBF_REG_DISABLE_PF is 0x%x\n", val);

    val = REG_RD(sc, IGU_REG_PCI_PF_MSI_EN);
    BLOGD(sc, DBG_LOAD, "IGU_REG_PCI_PF_MSI_EN is 0x%x\n", val);

    val = REG_RD(sc, IGU_REG_PCI_PF_MSIX_EN);
    BLOGD(sc, DBG_LOAD, "IGU_REG_PCI_PF_MSIX_EN is 0x%x\n", val);

    val = REG_RD(sc, IGU_REG_PCI_PF_MSIX_FUNC_MASK);
    BLOGD(sc, DBG_LOAD, "IGU_REG_PCI_PF_MSIX_FUNC_MASK is 0x%x\n", val);

    val = REG_RD(sc, PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR);
    BLOGD(sc, DBG_LOAD, "PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR is 0x%x\n", val);

    val = REG_RD(sc, PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR);
    BLOGD(sc, DBG_LOAD, "PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR is 0x%x\n", val);

    val = REG_RD(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER);
    BLOGD(sc, DBG_LOAD, "PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER is 0x%x\n", val);
}

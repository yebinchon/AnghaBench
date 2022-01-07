
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ae_softc_t ;


 int AE_PCIE_DLL_TX_CTRL_DEFAULT ;
 int AE_PCIE_DLL_TX_CTRL_REG ;
 int AE_PCIE_LTSSM_TESTMODE_DEFAULT ;
 int AE_PCIE_LTSSM_TESTMODE_REG ;
 int AE_WRITE_4 (int *,int ,int ) ;

__attribute__((used)) static void
ae_pcie_init(ae_softc_t *sc)
{

 AE_WRITE_4(sc, AE_PCIE_LTSSM_TESTMODE_REG, AE_PCIE_LTSSM_TESTMODE_DEFAULT);
 AE_WRITE_4(sc, AE_PCIE_DLL_TX_CTRL_REG, AE_PCIE_DLL_TX_CTRL_DEFAULT);
}

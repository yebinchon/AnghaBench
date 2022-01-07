
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int PCIM_EXP_STA_TRANSACTION_PND ;
 int PCIR_EXPRESS_DEVICE_STA ;
 int bxe_pcie_capability_read (struct bxe_softc*,int ,int) ;

__attribute__((used)) static uint8_t
bxe_is_pcie_pending(struct bxe_softc *sc)
{
    return (bxe_pcie_capability_read(sc, PCIR_EXPRESS_DEVICE_STA, 2) &
            PCIM_EXP_STA_TRANSACTION_PND);
}

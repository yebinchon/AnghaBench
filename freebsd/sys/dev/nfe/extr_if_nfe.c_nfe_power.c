
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int nfe_flags; int nfe_revid; scalar_t__ nfe_devid; } ;


 int DELAY (int) ;
 int NFE_MAC_RESET ;
 int NFE_MAC_RESET_MAGIC ;
 int NFE_PWR2_CTL ;
 int NFE_PWR2_REVA3 ;
 int NFE_PWR2_WAKEUP_MASK ;
 int NFE_PWR_MGMT ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RXTX_BIT2 ;
 int NFE_RXTX_CTL ;
 int NFE_RXTX_RESET ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 scalar_t__ PCI_PRODUCT_NVIDIA_NFORCE430_LAN1 ;
 scalar_t__ PCI_PRODUCT_NVIDIA_NFORCE430_LAN2 ;

__attribute__((used)) static void
nfe_power(struct nfe_softc *sc)
{
 uint32_t pwr;

 if ((sc->nfe_flags & NFE_PWR_MGMT) == 0)
  return;
 NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_RESET | NFE_RXTX_BIT2);
 NFE_WRITE(sc, NFE_MAC_RESET, NFE_MAC_RESET_MAGIC);
 DELAY(100);
 NFE_WRITE(sc, NFE_MAC_RESET, 0);
 DELAY(100);
 NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_BIT2);
 pwr = NFE_READ(sc, NFE_PWR2_CTL);
 pwr &= ~NFE_PWR2_WAKEUP_MASK;
 if (sc->nfe_revid >= 0xa3 &&
     (sc->nfe_devid == PCI_PRODUCT_NVIDIA_NFORCE430_LAN1 ||
     sc->nfe_devid == PCI_PRODUCT_NVIDIA_NFORCE430_LAN2))
  pwr |= NFE_PWR2_REVA3;
 NFE_WRITE(sc, NFE_PWR2_CTL, pwr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snps_dwc3_softc {int dummy; } ;


 int DWC3_GCTL ;
 int DWC3_GCTL_PRTCAPDIR_HOST ;
 int DWC3_GCTL_PRTCAPDIR_MASK ;
 int DWC3_READ (struct snps_dwc3_softc*,int ) ;
 int DWC3_WRITE (struct snps_dwc3_softc*,int ,int ) ;

__attribute__((used)) static void
snps_dwc3_configure_host(struct snps_dwc3_softc *sc)
{
 uint32_t reg;

 reg = DWC3_READ(sc, DWC3_GCTL);
 reg &= ~DWC3_GCTL_PRTCAPDIR_MASK;
 reg |= DWC3_GCTL_PRTCAPDIR_HOST;
 DWC3_WRITE(sc, DWC3_GCTL, reg);
}

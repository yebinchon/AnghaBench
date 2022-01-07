
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vge_softc {int dummy; } ;


 int CSR_CLRBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int VGE_DIAGCTL ;
 int VGE_DIAGCTL_GMII ;
 int VGE_DIAGCTL_MACFORCE ;
 int VGE_PWRSTAT ;
 int VGE_STICKHW_DS0 ;
 int VGE_STICKHW_DS1 ;
 int VGE_STICKHW_SWPTAG ;
 int VGE_WOLCFGC ;
 int VGE_WOLCFG_PMEOVR ;
 int VGE_WOLCFG_SAB ;
 int VGE_WOLCFG_SAM ;
 int VGE_WOLCR0C ;
 int VGE_WOLCR0_PATTERN_ALL ;
 int VGE_WOLCR1C ;
 int VGE_WOLSR0C ;
 int VGE_WOLSR1C ;

__attribute__((used)) static void
vge_clrwol(struct vge_softc *sc)
{
 uint8_t val;

 val = CSR_READ_1(sc, VGE_PWRSTAT);
 val &= ~VGE_STICKHW_SWPTAG;
 CSR_WRITE_1(sc, VGE_PWRSTAT, val);

 val = CSR_READ_1(sc, VGE_PWRSTAT);
 val &= ~(VGE_STICKHW_DS0 | VGE_STICKHW_DS1);
 CSR_WRITE_1(sc, VGE_PWRSTAT, val);

 CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_GMII);
 CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);


 CSR_WRITE_1(sc, VGE_WOLCR0C, VGE_WOLCR0_PATTERN_ALL);

 CSR_WRITE_1(sc, VGE_WOLCR1C, 0x0F);
 CSR_WRITE_1(sc, VGE_WOLCFGC, VGE_WOLCFG_SAB | VGE_WOLCFG_SAM |
     VGE_WOLCFG_PMEOVR);

 CSR_WRITE_1(sc, VGE_WOLSR0C, 0xFF);
 CSR_WRITE_1(sc, VGE_WOLSR1C, 0xFF);
}

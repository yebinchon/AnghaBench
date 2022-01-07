
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int dummy; } ;


 int BWI_MAC_INTR_MASK ;
 int CSR_SETBITS_4 (struct bwi_softc*,int ,int ) ;

__attribute__((used)) static void
bwi_enable_intrs(struct bwi_softc *sc, uint32_t enable_intrs)
{
 CSR_SETBITS_4(sc, BWI_MAC_INTR_MASK, enable_intrs);
}

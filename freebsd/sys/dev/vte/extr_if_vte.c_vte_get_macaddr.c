
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {int* vte_eaddr; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int VTE_MID0H ;
 int VTE_MID0L ;
 int VTE_MID0M ;

__attribute__((used)) static void
vte_get_macaddr(struct vte_softc *sc)
{
 uint16_t mid;





 mid = CSR_READ_2(sc, VTE_MID0L);
 sc->vte_eaddr[0] = (mid >> 0) & 0xFF;
 sc->vte_eaddr[1] = (mid >> 8) & 0xFF;
 mid = CSR_READ_2(sc, VTE_MID0M);
 sc->vte_eaddr[2] = (mid >> 0) & 0xFF;
 sc->vte_eaddr[3] = (mid >> 8) & 0xFF;
 mid = CSR_READ_2(sc, VTE_MID0H);
 sc->vte_eaddr[4] = (mid >> 0) & 0xFF;
 sc->vte_eaddr[5] = (mid >> 8) & 0xFF;
}

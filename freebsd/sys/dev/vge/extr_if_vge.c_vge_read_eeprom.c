
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vge_softc {int dummy; } ;
typedef int * caddr_t ;


 int CSR_READ_1 (struct vge_softc*,scalar_t__) ;
 int ETHER_ADDR_LEN ;
 scalar_t__ VGE_PAR0 ;
 int ntohs (int ) ;
 int vge_eeprom_getword (struct vge_softc*,int,int *) ;

__attribute__((used)) static void
vge_read_eeprom(struct vge_softc *sc, caddr_t dest, int off, int cnt, int swap)
{
 int i;
 for (i = 0; i < ETHER_ADDR_LEN; i++)
  dest[i] = CSR_READ_1(sc, VGE_PAR0 + i);

}

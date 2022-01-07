
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sbni_softc {int dummy; } ;


 int BU_EMP ;
 int CSR0 ;
 int ENXIO ;
 int EN_INT ;
 int VALID_DECODER ;
 int sbni_inb (struct sbni_softc*,int ) ;

int
sbni_probe(struct sbni_softc *sc)
{
 u_char csr0;

 csr0 = sbni_inb(sc, CSR0);
 if (csr0 != 0xff && csr0 != 0x00) {
  csr0 &= ~EN_INT;
  if (csr0 & BU_EMP)
   csr0 |= EN_INT;

  if (VALID_DECODER & (1 << (csr0 >> 4)))
   return (0);
 }

 return (ENXIO);
}

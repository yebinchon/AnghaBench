
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct an_softc {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int AN_BAP0 ;
 int AN_DATA0 ;
 int CSR_WRITE_1 (struct an_softc*,int ,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int ) ;
 int EIO ;
 scalar_t__ an_seek (struct an_softc*,int,int,int ) ;

__attribute__((used)) static int
an_write_data(struct an_softc *sc, int id, int off, caddr_t buf, int len)
{
 int i;
 u_int16_t *ptr;
 u_int8_t *ptr2;

 if (off != -1) {
  if (an_seek(sc, id, off, AN_BAP0))
   return(EIO);
 }

 ptr = (u_int16_t *)buf;
 for (i = len; i > 1; i -= 2)
  CSR_WRITE_2(sc, AN_DATA0, *ptr++);
 if (i) {
  ptr2 = (u_int8_t *)ptr;
  CSR_WRITE_1(sc, AN_DATA0, *ptr2);
 }

 return(0);
}

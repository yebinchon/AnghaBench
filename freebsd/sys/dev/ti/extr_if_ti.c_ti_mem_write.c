
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_softc {int ti_bhandle; int ti_btag; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int ) ;
 int TI_WINBASE ;
 scalar_t__ TI_WINDOW ;
 int TI_WINLEN ;
 int bus_space_write_region_4 (int ,int ,scalar_t__,int*,int) ;
 int rounddown2 (int,int) ;

__attribute__((used)) static void
ti_mem_write(struct ti_softc *sc, uint32_t addr, uint32_t len, void *buf)
{
 int segptr, segsize, cnt;
 char *ptr;

 segptr = addr;
 cnt = len;
 ptr = buf;

 while (cnt) {
  if (cnt < TI_WINLEN)
   segsize = cnt;
  else
   segsize = TI_WINLEN - (segptr % TI_WINLEN);
  CSR_WRITE_4(sc, TI_WINBASE, rounddown2(segptr, TI_WINLEN));
  bus_space_write_region_4(sc->ti_btag, sc->ti_bhandle,
      TI_WINDOW + (segptr & (TI_WINLEN - 1)), (uint32_t *)ptr,
      segsize / 4);
  ptr += segsize;
  segptr += segsize;
  cnt -= segsize;
 }
}

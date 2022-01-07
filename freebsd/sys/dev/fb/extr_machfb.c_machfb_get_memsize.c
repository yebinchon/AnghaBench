
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int sc_flags; } ;


 int MACHFB_DSP ;
 int MEM_CNTL ;
 int printf (char*,int) ;
 int regr (struct machfb_softc*,int ) ;

__attribute__((used)) static int
machfb_get_memsize(struct machfb_softc *sc)
{
 int tmp, memsize;
 const int mem_tab[] = {
  512, 1024, 2048, 4096, 6144, 8192, 12288, 16384
 };

 tmp = regr(sc, MEM_CNTL);



 if (sc->sc_flags & MACHFB_DSP) {
  tmp &= 0x0000000f;
  if (tmp < 8)
   memsize = (tmp + 1) * 512;
  else if (tmp < 12)
   memsize = (tmp - 3) * 1024;
  else
   memsize = (tmp - 7) * 2048;
 } else
  memsize = mem_tab[tmp & 0x07];

 return (memsize);
}

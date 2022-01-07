
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct cfi_softc {scalar_t__ sc_width; } ;


 int FALSE ;
 int TRUE ;
 int cfi_read (struct cfi_softc*,int) ;

__attribute__((used)) static bool
cfi_check_erase(struct cfi_softc *sc, u_int ofs, u_int sz)
{
 bool result;
 int i;
 uint32_t val;

 result = FALSE;
 for (i = 0; i < sz; i += sc->sc_width) {
  val = cfi_read(sc, ofs + i);
  switch (sc->sc_width) {
  case 1:
   if (val != 0xff)
    goto out;
   continue;
  case 2:
   if (val != 0xffff)
    goto out;
   continue;
  case 4:
   if (val != 0xffffffff)
    goto out;
   continue;
  }
 }
 result = TRUE;

out:
 return (result);
}

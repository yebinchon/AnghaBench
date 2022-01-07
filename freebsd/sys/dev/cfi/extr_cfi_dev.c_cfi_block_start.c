
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct cfi_softc {int sc_regions; scalar_t__ sc_wrbufsz; int sc_writing; int * sc_wrbuf; void* sc_wrbufcpy; scalar_t__ sc_width; scalar_t__ sc_wrofs; TYPE_1__* sc_region; } ;
struct TYPE_2__ {scalar_t__ r_blocks; scalar_t__ r_blksz; } ;


 int EFAULT ;
 int M_TEMP ;
 int M_WAITOK ;
 void* cfi_read_raw (struct cfi_softc*,scalar_t__) ;
 void* malloc (scalar_t__,int ,int ) ;
 int memcpy (void*,int *,scalar_t__) ;

int
cfi_block_start(struct cfi_softc *sc, u_int ofs)
{
 union {
  uint8_t *x8;
  uint16_t *x16;
  uint32_t *x32;
 } ptr;
 u_int rofs, rsz;
 uint32_t val;
 int r;

 rofs = 0;
 for (r = 0; r < sc->sc_regions; r++) {
  rsz = sc->sc_region[r].r_blocks * sc->sc_region[r].r_blksz;
  if (ofs < rofs + rsz)
   break;
  rofs += rsz;
 }
 if (r == sc->sc_regions)
  return (EFAULT);

 sc->sc_wrbufsz = sc->sc_region[r].r_blksz;
 sc->sc_wrbuf = malloc(sc->sc_wrbufsz, M_TEMP, M_WAITOK);
 sc->sc_wrofs = ofs - (ofs - rofs) % sc->sc_wrbufsz;


 ptr.x8 = sc->sc_wrbuf;
 for (r = 0; r < sc->sc_wrbufsz; r += sc->sc_width) {
  val = cfi_read_raw(sc, sc->sc_wrofs + r);
  switch (sc->sc_width) {
  case 1:
   *(ptr.x8)++ = val;
   break;
  case 2:
   *(ptr.x16)++ = val;
   break;
  case 4:
   *(ptr.x32)++ = val;
   break;
  }
 }
 sc->sc_wrbufcpy = malloc(sc->sc_wrbufsz, M_TEMP, M_WAITOK);
 memcpy(sc->sc_wrbufcpy, sc->sc_wrbuf, sc->sc_wrbufsz);
 sc->sc_writing = 1;
 return (0);
}

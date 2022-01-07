
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int ;
struct cfi_softc {int sc_cmdset; int sc_wrofs; int sc_wrbufsz; int* sc_wrbuf; int* sc_wrbufcpy; int sc_regions; int sc_maxbuf; int sc_width; int sc_handle; int sc_tag; scalar_t__* sc_max_timeouts; TYPE_1__* sc_region; } ;
typedef scalar_t__ sbintime_t ;
typedef int register_t ;
struct TYPE_2__ {int r_blksz; } ;


 int AMD_ADDR_START ;
 int CFI_AMD_BLOCK_ERASE ;
 int CFI_AMD_ERASE_SECTOR ;
 int CFI_AMD_MAXCHK ;
 int CFI_AMD_PROGRAM ;
 int CFI_BCS_BLOCK_ERASE ;
 int CFI_BCS_BUF_PROG_SETUP ;
 int CFI_BCS_CONFIRM ;
 int CFI_BCS_PROGRAM ;
 int CFI_BCS_READ_ARRAY ;
 int CFI_INTEL_LB ;
 int CFI_INTEL_LBS ;
 scalar_t__ CFI_INTEL_STATUS_WSMS ;
 int CFI_INTEL_UB ;
 size_t CFI_TIMEOUT_BUFWRITE ;
 size_t CFI_TIMEOUT_ERASE ;
 size_t CFI_TIMEOUT_WRITE ;




 int DELAY (int) ;
 int ENODEV ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MIN (int,int) ;
 int bus_space_write_1 (int ,int ,int,int) ;
 int bus_space_write_2 (int ,int ,int,scalar_t__) ;
 int bus_space_write_4 (int ,int ,int,scalar_t__) ;
 int bus_space_write_region_1 (int ,int ,int,int*,int) ;
 int bus_space_write_region_2 (int ,int ,int,scalar_t__*,int) ;
 int bus_space_write_region_4 (int ,int ,int,scalar_t__*,int) ;
 int cfi_amd_write (struct cfi_softc*,int,int,int ) ;
 int cfi_check_erase (struct cfi_softc*,int,int) ;
 scalar_t__ cfi_read (struct cfi_softc*,int) ;
 int cfi_reset_default (struct cfi_softc*) ;
 int cfi_wait_ready (struct cfi_softc*,int,scalar_t__,size_t) ;
 int cfi_write (struct cfi_softc*,int,int ) ;
 int ffs (int) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int printf (char*) ;
 scalar_t__ sbinuptime () ;

int
cfi_write_block(struct cfi_softc *sc)
{
 union {
  uint8_t *x8;
  uint16_t *x16;
  uint32_t *x32;
 } ptr, cpyprt;
 register_t intr;
 int error, i, j, neederase = 0;
 uint32_t st;
 u_int wlen;
 sbintime_t start;
 u_int minsz;
 uint32_t val;


 switch (sc->sc_cmdset) {
 case 129:
 case 128:
  cfi_write(sc, sc->sc_wrofs, CFI_INTEL_LBS);
  cfi_write(sc, sc->sc_wrofs, CFI_INTEL_UB);
  cfi_write(sc, sc->sc_wrofs, CFI_BCS_READ_ARRAY);
  break;
 }


 for (i = 0; i < sc->sc_wrbufsz; i++)
  if ((sc->sc_wrbuf[i] & sc->sc_wrbufcpy[i]) != sc->sc_wrbuf[i]) {
   neederase = 1;
   break;
  }

 if (neederase) {
  intr = intr_disable();
  start = sbinuptime();

  switch (sc->sc_cmdset) {
  case 129:
  case 128:
   cfi_write(sc, sc->sc_wrofs, CFI_BCS_BLOCK_ERASE);
   cfi_write(sc, sc->sc_wrofs, CFI_BCS_CONFIRM);
   break;
  case 130:
  case 131:

   minsz = sc->sc_region[0].r_blksz;
   for (i = 1; i < sc->sc_regions; i++) {
    if (sc->sc_region[i].r_blksz < minsz)
     minsz = sc->sc_region[i].r_blksz;
   }
   cfi_amd_write(sc, sc->sc_wrofs, AMD_ADDR_START,
       CFI_AMD_ERASE_SECTOR);
   cfi_amd_write(sc, sc->sc_wrofs,
       sc->sc_wrofs >> (ffs(minsz) - 1),
       CFI_AMD_BLOCK_ERASE);
   for (i = 0; i < CFI_AMD_MAXCHK; ++i) {
    if (cfi_check_erase(sc, sc->sc_wrofs,
        sc->sc_wrbufsz))
     break;
    DELAY(10);
   }
   if (i == CFI_AMD_MAXCHK) {
    printf("\nCFI Sector Erase time out error\n");
    return (ENODEV);
   }
   break;
  default:

   intr_restore(intr);
   return (ENODEV);
  }
  intr_restore(intr);
  error = cfi_wait_ready(sc, sc->sc_wrofs, start,
      CFI_TIMEOUT_ERASE);
  if (error)
   goto out;
 } else
  error = 0;


 ptr.x8 = sc->sc_wrbuf;
 cpyprt.x8 = sc->sc_wrbufcpy;
 if (sc->sc_maxbuf > sc->sc_width) {
  switch (sc->sc_cmdset) {
  case 129:
  case 128:
   for (i = 0; i < sc->sc_wrbufsz; i += wlen) {
    wlen = MIN(sc->sc_maxbuf, sc->sc_wrbufsz - i);

    intr = intr_disable();

    start = sbinuptime();
    do {
     cfi_write(sc, sc->sc_wrofs + i,
         CFI_BCS_BUF_PROG_SETUP);
     if (sbinuptime() > start + sc->sc_max_timeouts[CFI_TIMEOUT_BUFWRITE]) {
      error = ETIMEDOUT;
      goto out;
     }
     st = cfi_read(sc, sc->sc_wrofs + i);
    } while (! (st & CFI_INTEL_STATUS_WSMS));

    cfi_write(sc, sc->sc_wrofs + i,
        (wlen / sc->sc_width) - 1);
    switch (sc->sc_width) {
    case 1:
     bus_space_write_region_1(sc->sc_tag,
         sc->sc_handle, sc->sc_wrofs + i,
         ptr.x8 + i, wlen);
     break;
    case 2:
     bus_space_write_region_2(sc->sc_tag,
         sc->sc_handle, sc->sc_wrofs + i,
         ptr.x16 + i / 2, wlen / 2);
     break;
    case 4:
     bus_space_write_region_4(sc->sc_tag,
         sc->sc_handle, sc->sc_wrofs + i,
         ptr.x32 + i / 4, wlen / 4);
     break;
    }

    cfi_write(sc, sc->sc_wrofs + i,
        CFI_BCS_CONFIRM);

    intr_restore(intr);

    error = cfi_wait_ready(sc, sc->sc_wrofs + i,
        start, CFI_TIMEOUT_BUFWRITE);
    if (error != 0)
     goto out;
   }
   goto out;
  default:

   break;
  }

 }


 for (i = 0; i < sc->sc_wrbufsz; i += sc->sc_width) {


  if (!neederase) {
   switch (sc->sc_width) {
   case 1:
    if(*(ptr.x8 + i) == *(cpyprt.x8 + i))
     continue;
    break;
   case 2:
    if(*(ptr.x16 + i / 2) == *(cpyprt.x16 + i / 2))
     continue;
    break;
   case 4:
    if(*(ptr.x32 + i / 4) == *(cpyprt.x32 + i / 4))
     continue;
    break;
   }
  }






  intr = intr_disable();

  start = sbinuptime();
  switch (sc->sc_cmdset) {
  case 129:
  case 128:
   cfi_write(sc, sc->sc_wrofs + i, CFI_BCS_PROGRAM);
   break;
  case 130:
  case 131:
   cfi_amd_write(sc, 0, AMD_ADDR_START, CFI_AMD_PROGRAM);
   break;
  }
  switch (sc->sc_width) {
  case 1:
   bus_space_write_1(sc->sc_tag, sc->sc_handle,
       sc->sc_wrofs + i, *(ptr.x8 + i));
   break;
  case 2:
   bus_space_write_2(sc->sc_tag, sc->sc_handle,
       sc->sc_wrofs + i, *(ptr.x16 + i / 2));
   break;
  case 4:
   bus_space_write_4(sc->sc_tag, sc->sc_handle,
       sc->sc_wrofs + i, *(ptr.x32 + i / 4));
   break;
  }

  intr_restore(intr);

  if (sc->sc_cmdset == 131 ||
      sc->sc_cmdset == 130) {
   for (j = 0; j < CFI_AMD_MAXCHK; ++j) {
    switch (sc->sc_width) {
    case 1:
     val = *(ptr.x8 + i);
     break;
    case 2:
     val = *(ptr.x16 + i / 2);
     break;
    case 4:
     val = *(ptr.x32 + i / 4);
     break;
    }

    if (cfi_read(sc, sc->sc_wrofs + i) == val)
     break;

    DELAY(10);
   }
   if (j == CFI_AMD_MAXCHK) {
    printf("\nCFI Program Verify time out error\n");
    error = ENXIO;
    goto out;
   }
  } else {
   error = cfi_wait_ready(sc, sc->sc_wrofs, start,
      CFI_TIMEOUT_WRITE);
   if (error)
    goto out;
  }
 }



 out:
 cfi_reset_default(sc);


 switch (sc->sc_cmdset) {
 case 129:
 case 128:
  cfi_write(sc, sc->sc_wrofs, CFI_INTEL_LBS);
  cfi_write(sc, sc->sc_wrofs, CFI_INTEL_LB);
  cfi_write(sc, sc->sc_wrofs, CFI_BCS_READ_ARRAY);
  break;
 }
 return (error);
}

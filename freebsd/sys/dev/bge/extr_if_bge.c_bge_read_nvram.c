
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bge_softc {scalar_t__ bge_asicrev; } ;
typedef int * caddr_t ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 int bge_nvram_getbyte (struct bge_softc*,int,int *) ;

__attribute__((used)) static int
bge_read_nvram(struct bge_softc *sc, caddr_t dest, int off, int cnt)
{
 int err = 0, i;
 uint8_t byte = 0;

 if (sc->bge_asicrev != BGE_ASICREV_BCM5906)
  return (1);

 for (i = 0; i < cnt; i++) {
  err = bge_nvram_getbyte(sc, off + i, &byte);
  if (err)
   break;
  *(dest + i) = byte;
 }

 return (err ? 1 : 0);
}

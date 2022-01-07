
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_asicrev; int bge_flags; } ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 int BGE_FLAG_MBOX_REORDER ;
 scalar_t__ BGE_LPMBX_IRQ0_HI ;
 scalar_t__ BGE_MBX_IRQ0_HI ;
 int CSR_READ_4 (struct bge_softc*,int) ;
 int CSR_WRITE_4 (struct bge_softc*,int,int) ;

__attribute__((used)) static void
bge_writembx(struct bge_softc *sc, int off, int val)
{
 if (sc->bge_asicrev == BGE_ASICREV_BCM5906)
  off += BGE_LPMBX_IRQ0_HI - BGE_MBX_IRQ0_HI;

 CSR_WRITE_4(sc, off, val);
 if ((sc->bge_flags & BGE_FLAG_MBOX_REORDER) != 0)
  CSR_READ_4(sc, off);
}

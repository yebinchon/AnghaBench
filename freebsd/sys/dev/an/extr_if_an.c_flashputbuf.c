
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {unsigned short* an_flash_buffer; int mpi350; } ;


 int AN_AUX_DATA ;
 int AN_AUX_OFFSET ;
 int AN_AUX_PAGE ;
 int AN_SW0 (int ) ;
 int CSR_MEM_AUX_WRITE_4 (struct an_softc*,int,int) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int FLASH_SIZE ;

__attribute__((used)) static int
flashputbuf(struct ifnet *ifp)
{
 unsigned short *bufp;
 int nwords;
 struct an_softc *sc = ifp->if_softc;



 bufp = sc->an_flash_buffer;

 if (!sc->mpi350) {
  CSR_WRITE_2(sc, AN_AUX_PAGE, 0x100);
  CSR_WRITE_2(sc, AN_AUX_OFFSET, 0);

  for (nwords = 0; nwords != FLASH_SIZE / 2; nwords++) {
   CSR_WRITE_2(sc, AN_AUX_DATA, bufp[nwords] & 0xffff);
  }
 } else {
  for (nwords = 0; nwords != FLASH_SIZE / 4; nwords++) {
   CSR_MEM_AUX_WRITE_4(sc, 0x8000,
    ((u_int32_t *)bufp)[nwords] & 0xffff);
  }
 }

 CSR_WRITE_2(sc, AN_SW0(sc->mpi350), 0x8000);

 return 0;
}

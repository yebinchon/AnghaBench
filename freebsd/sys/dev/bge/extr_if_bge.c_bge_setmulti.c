
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_ifp; } ;
typedef int if_t ;


 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 scalar_t__ BGE_MAR0 ;
 int CSR_WRITE_4 (struct bge_softc*,scalar_t__,int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int bge_hash_maddr ;
 int if_foreach_llmaddr (int ,int ,int*) ;
 int if_getflags (int ) ;

__attribute__((used)) static void
bge_setmulti(struct bge_softc *sc)
{
 if_t ifp;
 uint32_t hashes[4] = { 0, 0, 0, 0 };
 int i;

 BGE_LOCK_ASSERT(sc);

 ifp = sc->bge_ifp;

 if (if_getflags(ifp) & IFF_ALLMULTI || if_getflags(ifp) & IFF_PROMISC) {
  for (i = 0; i < 4; i++)
   CSR_WRITE_4(sc, BGE_MAR0 + (i * 4), 0xFFFFFFFF);
  return;
 }


 for (i = 0; i < 4; i++)
  CSR_WRITE_4(sc, BGE_MAR0 + (i * 4), 0);

 if_foreach_llmaddr(ifp, bge_hash_maddr, hashes);

 for (i = 0; i < 4; i++)
  CSR_WRITE_4(sc, BGE_MAR0 + (i * 4), hashes[i]);
}

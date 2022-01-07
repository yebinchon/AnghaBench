
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_REG_GADDR (int) ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;
 int tsec_hash_maddr ;

__attribute__((used)) static void
tsec_setup_multicast(struct tsec_softc *sc)
{
 uint32_t hashtable[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 struct ifnet *ifp = sc->tsec_ifp;
 int i;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 if (ifp->if_flags & IFF_ALLMULTI) {
  for (i = 0; i < 8; i++)
   TSEC_WRITE(sc, TSEC_REG_GADDR(i), 0xFFFFFFFF);

  return;
 }

 if_foreach_llmaddr(ifp, tsec_hash_maddr, &hashtable);

 for (i = 0; i < 8; i++)
  TSEC_WRITE(sc, TSEC_REG_GADDR(i), hashtable[i]);
}

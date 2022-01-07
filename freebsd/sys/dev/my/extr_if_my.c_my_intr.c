
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct my_softc {struct ifnet* my_ifp; } ;
struct ifnet {int if_flags; int if_snd; } ;


 int CSR_READ_4 (struct my_softc*,int ) ;
 int CSR_WRITE_4 (struct my_softc*,int ,int) ;
 int IFCOUNTER_IERRORS ;
 int IFF_UP ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MY_ETI ;
 int MY_FBE ;
 int MY_IMR ;
 int MY_INTRS ;
 int MY_ISR ;
 int MY_LOCK (struct my_softc*) ;
 int MY_RBU ;
 int MY_RI ;
 int MY_RxErr ;
 int MY_TBU ;
 int MY_TI ;
 int MY_UNLOCK (struct my_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int my_init_locked (struct my_softc*) ;
 int my_reset (struct my_softc*) ;
 int my_rxeof (struct my_softc*) ;
 int my_start_locked (struct ifnet*) ;
 int my_stop (struct my_softc*) ;
 int my_txeoc (struct my_softc*) ;
 int my_txeof (struct my_softc*) ;

__attribute__((used)) static void
my_intr(void *arg)
{
 struct my_softc *sc;
 struct ifnet *ifp;
 u_int32_t status;

 sc = arg;
 MY_LOCK(sc);
 ifp = sc->my_ifp;
 if (!(ifp->if_flags & IFF_UP)) {
  MY_UNLOCK(sc);
  return;
 }

 CSR_WRITE_4(sc, MY_IMR, 0x00000000);

 for (;;) {
  status = CSR_READ_4(sc, MY_ISR);
  status &= MY_INTRS;
  if (status)
   CSR_WRITE_4(sc, MY_ISR, status);
  else
   break;

  if (status & MY_RI)
   my_rxeof(sc);

  if ((status & MY_RBU) || (status & MY_RxErr)) {

   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);





  }
  if (status & MY_TI)
   my_txeof(sc);
  if (status & MY_ETI)
   my_txeof(sc);
  if (status & MY_TBU)
   my_txeoc(sc);
 }


 CSR_WRITE_4(sc, MY_IMR, MY_INTRS);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  my_start_locked(ifp);
 MY_UNLOCK(sc);
 return;
}

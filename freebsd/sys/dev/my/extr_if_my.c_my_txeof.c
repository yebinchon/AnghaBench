
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {struct my_chain* my_tx_head; struct my_chain* my_tx_tail; } ;
struct my_softc {TYPE_1__ my_cdata; scalar_t__ my_timer; struct ifnet* my_ifp; } ;
struct my_chain {struct my_chain* my_nextdesc; int * my_mbuf; } ;
struct ifnet {int dummy; } ;


 int CSR_READ_4 (struct my_softc*,int ) ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int MY_EC ;
 int MY_Enhanced ;
 int MY_LC ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_NCRMASK ;
 int MY_NCRMask ;
 int MY_NCRShift ;
 int MY_OWNByNIC ;
 int MY_TCRRCR ;
 int MY_TSR ;
 int MY_TXERR ;
 int MY_TXSTATUS (struct my_chain*) ;
 int MY_UNSENT ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
my_txeof(struct my_softc * sc)
{
 struct my_chain *cur_tx;
 struct ifnet *ifp;

 MY_LOCK_ASSERT(sc);
 ifp = sc->my_ifp;

 sc->my_timer = 0;
 if (sc->my_cdata.my_tx_head == ((void*)0)) {
  return;
 }




 while (sc->my_cdata.my_tx_head->my_mbuf != ((void*)0)) {
  u_int32_t txstat;

  cur_tx = sc->my_cdata.my_tx_head;
  txstat = MY_TXSTATUS(cur_tx);
  if ((txstat & MY_OWNByNIC) || txstat == MY_UNSENT)
   break;
  if (!(CSR_READ_4(sc, MY_TCRRCR) & MY_Enhanced)) {
   if (txstat & MY_TXERR) {
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
    if (txstat & MY_EC)
     if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
    if (txstat & MY_LC)
     if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   }
   if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
       (txstat & MY_NCRMASK) >> MY_NCRShift);
  }
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  m_freem(cur_tx->my_mbuf);
  cur_tx->my_mbuf = ((void*)0);
  if (sc->my_cdata.my_tx_head == sc->my_cdata.my_tx_tail) {
   sc->my_cdata.my_tx_head = ((void*)0);
   sc->my_cdata.my_tx_tail = ((void*)0);
   break;
  }
  sc->my_cdata.my_tx_head = cur_tx->my_nextdesc;
 }
 if (CSR_READ_4(sc, MY_TCRRCR) & MY_Enhanced) {
  if_inc_counter(ifp, IFCOUNTER_COLLISIONS, (CSR_READ_4(sc, MY_TSR) & MY_NCRMask));
 }
 return;
}

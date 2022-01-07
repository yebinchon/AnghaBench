
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_queue {int br; struct nicvf* nic; } ;
struct nicvf {struct ifnet* ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int NICVF_TX_LOCK_ASSERT (struct snd_queue*) ;
 int drbr_advance (struct ifnet*,int ) ;
 struct mbuf* drbr_peek (struct ifnet*,int ) ;
 int drbr_putback (struct ifnet*,int ,struct mbuf*) ;
 int nicvf_tx_mbuf_locked (struct snd_queue*,struct mbuf**) ;

int
nicvf_xmit_locked(struct snd_queue *sq)
{
 struct nicvf *nic;
 struct ifnet *ifp;
 struct mbuf *next;
 int err;

 NICVF_TX_LOCK_ASSERT(sq);

 nic = sq->nic;
 ifp = nic->ifp;
 err = 0;

 while ((next = drbr_peek(ifp, sq->br)) != ((void*)0)) {

  ETHER_BPF_MTAP(ifp, next);

  err = nicvf_tx_mbuf_locked(sq, &next);
  if (err != 0) {
   if (next == ((void*)0))
    drbr_advance(ifp, sq->br);
   else
    drbr_putback(ifp, sq->br, next);

   break;
  }
  drbr_advance(ifp, sq->br);
 }
 return (err);
}

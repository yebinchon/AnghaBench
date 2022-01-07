
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_queue {int snd_task; int snd_taskq; struct nicvf* nic; } ;
struct nicvf {int link_up; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NICVF_TX_LOCK (struct snd_queue*) ;
 int NICVF_TX_UNLOCK (struct snd_queue*) ;
 int if_getdrvflags (struct ifnet*) ;
 int nicvf_xmit_locked (struct snd_queue*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nicvf_snd_task(void *arg, int pending)
{
 struct snd_queue *sq = (struct snd_queue *)arg;
 struct nicvf *nic;
 struct ifnet *ifp;
 int err;

 nic = sq->nic;
 ifp = nic->ifp;





 if (((if_getdrvflags(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING) || !nic->link_up)
  return;

 NICVF_TX_LOCK(sq);
 err = nicvf_xmit_locked(sq);
 NICVF_TX_UNLOCK(sq);

 if (err != 0)
  taskqueue_enqueue(sq->snd_taskq, &sq->snd_task);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifqueue {int dummy; } ;
struct TYPE_3__ {struct ipoib_ah* raw; } ;
struct ib_sa_path_rec {char* sl; int dlid; TYPE_1__ dgid; } ;
struct ipoib_path {int valid; int done; int * query; int hwaddr; struct ifqueue queue; struct ipoib_ah* ah; struct ib_sa_path_rec pathrec; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int lock; int pd; int port; int ca; struct ifnet* dev; } ;
struct ipoib_ah {int dummy; } ;
struct ifnet {scalar_t__ (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;
struct ib_ah_attr {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef int mbqueue ;


 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int _IF_DEQUEUE (struct ifqueue*,struct mbuf*) ;
 int _IF_ENQUEUE (struct ifqueue*,struct mbuf*) ;
 struct ipoib_ah* be16_to_cpu (int ) ;
 int bzero (struct ifqueue*,int) ;
 int complete (int *) ;
 int ib_init_ah_from_path (int ,int ,struct ib_sa_path_rec*,struct ib_ah_attr*) ;
 int ipoib_cm_create_tx (struct ipoib_dev_priv*,struct ipoib_path*) ;
 scalar_t__ ipoib_cm_enabled (struct ipoib_dev_priv*,int ) ;
 int ipoib_cm_get (struct ipoib_path*) ;
 int ipoib_cm_set (struct ipoib_path*,int ) ;
 struct ipoib_ah* ipoib_create_ah (struct ipoib_dev_priv*,int ,struct ib_ah_attr*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int,struct ipoib_ah*,char*) ;
 int ipoib_put_ah (struct ipoib_ah*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
path_rec_completion(int status, struct ib_sa_path_rec *pathrec, void *path_ptr)
{
 struct ipoib_path *path = path_ptr;
 struct ipoib_dev_priv *priv = path->priv;
 struct ifnet *dev = priv->dev;
 struct ipoib_ah *ah = ((void*)0);
 struct ipoib_ah *old_ah = ((void*)0);
 struct epoch_tracker et;
 struct ifqueue mbqueue;
 struct mbuf *mb;
 unsigned long flags;

 if (!status)
  ipoib_dbg(priv, "PathRec LID 0x%04x for GID %16D\n",
     be16_to_cpu(pathrec->dlid), pathrec->dgid.raw, ":");
 else
  ipoib_dbg(priv, "PathRec status %d for GID %16D\n",
     status, path->pathrec.dgid.raw, ":");

 bzero(&mbqueue, sizeof(mbqueue));

 if (!status) {
  struct ib_ah_attr av;

  if (!ib_init_ah_from_path(priv->ca, priv->port, pathrec, &av))
   ah = ipoib_create_ah(priv, priv->pd, &av);
 }

 spin_lock_irqsave(&priv->lock, flags);

 if (ah) {
  path->pathrec = *pathrec;

  old_ah = path->ah;
  path->ah = ah;

  ipoib_dbg(priv, "created address handle %p for LID 0x%04x, SL %d\n",
     ah, be16_to_cpu(pathrec->dlid), pathrec->sl);

  for (;;) {
   _IF_DEQUEUE(&path->queue, mb);
   if (mb == ((void*)0))
    break;
   _IF_ENQUEUE(&mbqueue, mb);
  }






  path->valid = 1;
 }

 path->query = ((void*)0);
 complete(&path->done);

 spin_unlock_irqrestore(&priv->lock, flags);

 if (old_ah)
  ipoib_put_ah(old_ah);

 NET_EPOCH_ENTER(et);
 for (;;) {
  _IF_DEQUEUE(&mbqueue, mb);
  if (mb == ((void*)0))
   break;
  mb->m_pkthdr.rcvif = dev;
  if (dev->if_transmit(dev, mb))
   ipoib_warn(priv, "dev_queue_xmit failed "
       "to requeue packet\n");
 }
 NET_EPOCH_EXIT(et);
}

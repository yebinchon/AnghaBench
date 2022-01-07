
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct mbuf {int dummy; } ;
struct TYPE_8__ {scalar_t__ ifq_len; } ;
struct TYPE_6__ {int raw; } ;
struct TYPE_7__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {scalar_t__ ah; int flags; TYPE_4__ pkt_queue; int list; TYPE_3__ mcmember; } ;
struct ipoib_dev_priv {int multicast_list; TYPE_1__* broadcast; int flags; struct ifnet* dev; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {int flags; } ;


 int IB_MULTICAST_QPN ;
 int IFCOUNTER_OERRORS ;
 int IPOIB_FLAG_OPER_UP ;
 scalar_t__ IPOIB_MAX_MCAST_QUEUE ;
 int IPOIB_MCAST_FLAG_ATTACHED ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_FLAG_SENDONLY ;
 int _IF_ENQUEUE (TYPE_4__*,struct mbuf*) ;
 int __ipoib_mcast_add (struct ipoib_dev_priv*,struct ipoib_mcast*) ;
 struct ipoib_mcast* __ipoib_mcast_find (struct ipoib_dev_priv*,void*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,...) ;
 struct ipoib_mcast* ipoib_mcast_alloc (struct ipoib_dev_priv*,int ) ;
 int ipoib_mcast_sendonly_join (struct ipoib_mcast*) ;
 int ipoib_send (struct ipoib_dev_priv*,struct mbuf*,scalar_t__,int ) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int list_add_tail (int *,int *) ;
 int m_freem (struct mbuf*) ;
 int memcpy (int ,void*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
ipoib_mcast_send(struct ipoib_dev_priv *priv, void *mgid, struct mbuf *mb)
{
 struct ifnet *dev = priv->dev;
 struct ipoib_mcast *mcast;

 if (!test_bit(IPOIB_FLAG_OPER_UP, &priv->flags) ||
     !priv->broadcast ||
     !test_bit(IPOIB_MCAST_FLAG_ATTACHED, &priv->broadcast->flags)) {
  if_inc_counter(dev, IFCOUNTER_OERRORS, 1);
  m_freem(mb);
  return;
 }

 mcast = __ipoib_mcast_find(priv, mgid);
 if (!mcast) {

  ipoib_dbg_mcast(priv, "setting up send only multicast group for %16D\n",
    mgid, ":");

  mcast = ipoib_mcast_alloc(priv, 0);
  if (!mcast) {
   ipoib_warn(priv, "unable to allocate memory for "
       "multicast structure\n");
   if_inc_counter(dev, IFCOUNTER_OERRORS, 1);
   m_freem(mb);
   goto out;
  }

  set_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags);
  memcpy(mcast->mcmember.mgid.raw, mgid, sizeof (union ib_gid));
  __ipoib_mcast_add(priv, mcast);
  list_add_tail(&mcast->list, &priv->multicast_list);
 }

 if (!mcast->ah) {
  if (mcast->pkt_queue.ifq_len < IPOIB_MAX_MCAST_QUEUE) {
   _IF_ENQUEUE(&mcast->pkt_queue, mb);
  } else {
   if_inc_counter(dev, IFCOUNTER_OERRORS, 1);
   m_freem(mb);
  }

  if (test_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
   ipoib_dbg_mcast(priv, "no address vector, "
     "but multicast join already started\n");
  else if (test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
   ipoib_mcast_sendonly_join(mcast);





  mcast = ((void*)0);
 }

out:
 if (mcast && mcast->ah)
  ipoib_send(priv, mb, mcast->ah, IB_MULTICAST_QPN);
}

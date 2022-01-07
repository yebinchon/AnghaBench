
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ifq_len; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {TYPE_4__ pkt_queue; scalar_t__ ah; TYPE_2__ mcmember; TYPE_3__* priv; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {struct ifnet* dev; } ;


 int IFCOUNTER_OERRORS ;
 int _IF_DRAIN (TYPE_4__*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int ipoib_dbg_mcast (TYPE_3__*,char*,int ,char*) ;
 int ipoib_put_ah (scalar_t__) ;
 int kfree (struct ipoib_mcast*) ;

__attribute__((used)) static void ipoib_mcast_free(struct ipoib_mcast *mcast)
{
 struct ifnet *dev = mcast->priv->dev;
 int tx_dropped = 0;

 ipoib_dbg_mcast(mcast->priv, "deleting multicast group %16D\n",
   mcast->mcmember.mgid.raw, ":");

 if (mcast->ah)
  ipoib_put_ah(mcast->ah);

 tx_dropped = mcast->pkt_queue.ifq_len;
 _IF_DRAIN(&mcast->pkt_queue);

 if_inc_counter(dev, IFCOUNTER_OERRORS, tx_dropped);

 kfree(mcast);
}

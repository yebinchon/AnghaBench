
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ifq_len; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int flags; TYPE_3__ pkt_queue; TYPE_2__ mcmember; int logcount; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {int dev; } ;
struct ib_sa_multicast {int rec; struct ipoib_mcast* context; } ;


 int ENETRESET ;
 int IFCOUNTER_OERRORS ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int _IF_DRAIN (TYPE_3__*) ;
 int if_inc_counter (int ,int ,int ) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,int ,char*,int) ;
 int ipoib_mcast_join_finish (struct ipoib_mcast*,int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int
ipoib_mcast_sendonly_join_complete(int status,
       struct ib_sa_multicast *multicast)
{
 struct ipoib_mcast *mcast = multicast->context;
 struct ipoib_dev_priv *priv = mcast->priv;


 if (status == -ENETRESET)
  return 0;

 if (!status)
  status = ipoib_mcast_join_finish(mcast, &multicast->rec);

 if (status) {
  if (mcast->logcount++ < 20)
   ipoib_dbg_mcast(priv, "multicast join failed for %16D, status %d\n",
     mcast->mcmember.mgid.raw, ":", status);


  if_inc_counter(priv->dev, IFCOUNTER_OERRORS, mcast->pkt_queue.ifq_len);
  _IF_DRAIN(&mcast->pkt_queue);


  status = test_and_clear_bit(IPOIB_MCAST_FLAG_BUSY,
         &mcast->flags);
 }
 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int mlid; TYPE_2__ mgid; } ;
struct ipoib_mcast {TYPE_1__ mcmember; int flags; int mc; } ;
struct ipoib_dev_priv {int qp; } ;


 int IPOIB_MCAST_FLAG_ATTACHED ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int be16_to_cpu (int ) ;
 int ib_detach_mcast (int ,TYPE_2__*,int ) ;
 int ib_sa_free_multicast (int ) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,int ,char*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int ipoib_mcast_leave(struct ipoib_dev_priv *priv, struct ipoib_mcast *mcast)
{
 int ret = 0;

 if (test_and_clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
  ib_sa_free_multicast(mcast->mc);

 if (test_and_clear_bit(IPOIB_MCAST_FLAG_ATTACHED, &mcast->flags)) {
  ipoib_dbg_mcast(priv, "leaving MGID %16D\n",
    mcast->mcmember.mgid.raw, ":");


  ret = ib_detach_mcast(priv->qp, &mcast->mcmember.mgid,
          be16_to_cpu(mcast->mcmember.mlid));
  if (ret)
   ipoib_warn(priv, "ib_detach_mcast failed (result = %d)\n", ret);
 }

 return 0;
}

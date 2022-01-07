
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mpt_softc {int raid_nonopt_volumes; int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct mpt_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int mpt_raid_sysctl_vol_member_wce ;
 int mpt_raid_sysctl_vol_queue_depth ;
 int mpt_raid_sysctl_vol_resync_rate ;

__attribute__((used)) static void
mpt_raid_sysctl_attach(struct mpt_softc *mpt)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(mpt->dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(mpt->dev);

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "vol_member_wce", CTLTYPE_STRING | CTLFLAG_RW, mpt, 0,
   mpt_raid_sysctl_vol_member_wce, "A",
   "volume member WCE(On,Off,On-During-Rebuild,NC)");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "vol_queue_depth", CTLTYPE_INT | CTLFLAG_RW, mpt, 0,
   mpt_raid_sysctl_vol_queue_depth, "I",
   "default volume queue depth");

 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "vol_resync_rate", CTLTYPE_INT | CTLFLAG_RW, mpt, 0,
   mpt_raid_sysctl_vol_resync_rate, "I",
   "volume resync priority (0 == NC, 1 - 255)");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
   "nonoptimal_volumes", CTLFLAG_RD,
   &mpt->raid_nonopt_volumes, 0,
   "number of nonoptimal volumes");
}

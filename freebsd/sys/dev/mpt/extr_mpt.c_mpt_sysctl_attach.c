
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mpt_softc {int failure_id; int role; int verbose; int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
mpt_sysctl_attach(struct mpt_softc *mpt)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(mpt->dev);
 struct sysctl_oid *tree = device_get_sysctl_tree(mpt->dev);

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
         "debug", CTLFLAG_RW, &mpt->verbose, 0,
         "Debugging/Verbose level");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
         "role", CTLFLAG_RD, &mpt->role, 0,
         "HBA role");





}

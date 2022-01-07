
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ena_adapter {int missing_tx_threshold; int missing_tx_max_queues; int missing_tx_timeout; int keep_alive_timeout; int wd_active; int pdev; } ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_U32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ena_sysctl_add_wd(struct ena_adapter *adapter)
{
 device_t dev;

 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = adapter->pdev;

 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);


 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "wd_active",
     CTLFLAG_RWTUN, &adapter->wd_active, 0,
     "Watchdog is active");

 SYSCTL_ADD_QUAD(ctx, child, OID_AUTO, "keep_alive_timeout",
     CTLFLAG_RWTUN, &adapter->keep_alive_timeout,
     "Timeout for Keep Alive messages");

 SYSCTL_ADD_QUAD(ctx, child, OID_AUTO, "missing_tx_timeout",
     CTLFLAG_RWTUN, &adapter->missing_tx_timeout,
     "Timeout for TX completion");

 SYSCTL_ADD_U32(ctx, child, OID_AUTO, "missing_tx_max_queues",
     CTLFLAG_RWTUN, &adapter->missing_tx_max_queues, 0,
     "Number of TX queues to check per run");

 SYSCTL_ADD_U32(ctx, child, OID_AUTO, "missing_tx_threshold",
     CTLFLAG_RWTUN, &adapter->missing_tx_threshold, 0,
     "Max number of timeouted packets");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ena_adapter {int pdev; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ena_adapter*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int ena_sysctl_buf_ring_size ;
 int ena_sysctl_rx_queue_size ;

__attribute__((used)) static void
ena_sysctl_add_tuneables(struct ena_adapter *adapter)
{
 device_t dev;

 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child;

 dev = adapter->pdev;

 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 child = SYSCTL_CHILDREN(tree);


 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "buf_ring_size", CTLTYPE_INT |
     CTLFLAG_RW, adapter, 0, ena_sysctl_buf_ring_size, "I",
     "Size of the bufring");


 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "rx_queue_size", CTLTYPE_INT |
     CTLFLAG_RW, adapter, 0, ena_sysctl_rx_queue_size, "I",
     "Size of the Rx ring. The size should be a power of 2. "
     "Max value is 8K");
}

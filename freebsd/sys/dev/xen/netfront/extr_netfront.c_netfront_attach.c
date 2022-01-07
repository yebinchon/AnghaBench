
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_ULONG (int ,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int create_netdev (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 int xn_enable_lro ;
 int xn_num_queues ;

__attribute__((used)) static int
netfront_attach(device_t dev)
{
 int err;

 err = create_netdev(dev);
 if (err != 0) {
  xenbus_dev_fatal(dev, err, "creating netdev");
  return (err);
 }

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "enable_lro", CTLFLAG_RW,
     &xn_enable_lro, 0, "Large Receive Offload");

 SYSCTL_ADD_ULONG(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "num_queues", CTLFLAG_RD,
     &xn_num_queues, "Number of pairs of queues");

 return (0);
}

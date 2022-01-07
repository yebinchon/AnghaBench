
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xs_transaction {int dummy; } ;
struct netfront_info {int num_queues; TYPE_1__* xn_ifp; int * txq; int * rxq; int xbdev; int mac; } ;
typedef int device_t ;
struct TYPE_2__ {int if_capenable; } ;


 int EAGAIN ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int XST_NIL ;
 int netif_free (struct netfront_info*) ;
 int setup_device (int ,struct netfront_info*,unsigned long) ;
 int write_queue_xenstore_keys (int ,int *,int *,struct xs_transaction*,int) ;
 int xen_net_read_mac (int ,int ) ;
 int xenbus_dev_fatal (int ,int,char*,...) ;
 char* xenbus_get_node (int ) ;
 int xenbus_get_otherend_path (int ) ;
 unsigned long xn_num_queues ;
 int xs_printf (struct xs_transaction,char const*,char*,char*,int) ;
 int xs_scanf (int ,int ,char*,int *,char*,unsigned long*) ;
 int xs_transaction_end (struct xs_transaction,int) ;
 int xs_transaction_start (struct xs_transaction*) ;

__attribute__((used)) static int
talk_to_backend(device_t dev, struct netfront_info *info)
{
 const char *message;
 struct xs_transaction xst;
 const char *node = xenbus_get_node(dev);
 int err;
 unsigned long num_queues, max_queues = 0;
 unsigned int i;

 err = xen_net_read_mac(dev, info->mac);
 if (err != 0) {
  xenbus_dev_fatal(dev, err, "parsing %s/mac", node);
  goto out;
 }

 err = xs_scanf(XST_NIL, xenbus_get_otherend_path(info->xbdev),
     "multi-queue-max-queues", ((void*)0), "%lu", &max_queues);
 if (err != 0)
  max_queues = 1;
 num_queues = xn_num_queues;
 if (num_queues > max_queues)
  num_queues = max_queues;

 err = setup_device(dev, info, num_queues);
 if (err != 0)
  goto out;

 again:
 err = xs_transaction_start(&xst);
 if (err != 0) {
  xenbus_dev_fatal(dev, err, "starting transaction");
  goto free;
 }

 if (info->num_queues == 1) {
  err = write_queue_xenstore_keys(dev, &info->rxq[0],
      &info->txq[0], &xst, 0);
  if (err != 0)
   goto abort_transaction_no_def_error;
 } else {
  err = xs_printf(xst, node, "multi-queue-num-queues",
      "%u", info->num_queues);
  if (err != 0) {
   message = "writing multi-queue-num-queues";
   goto abort_transaction;
  }

  for (i = 0; i < info->num_queues; i++) {
   err = write_queue_xenstore_keys(dev, &info->rxq[i],
       &info->txq[i], &xst, 1);
   if (err != 0)
    goto abort_transaction_no_def_error;
  }
 }

 err = xs_printf(xst, node, "request-rx-copy", "%u", 1);
 if (err != 0) {
  message = "writing request-rx-copy";
  goto abort_transaction;
 }
 err = xs_printf(xst, node, "feature-rx-notify", "%d", 1);
 if (err != 0) {
  message = "writing feature-rx-notify";
  goto abort_transaction;
 }
 err = xs_printf(xst, node, "feature-sg", "%d", 1);
 if (err != 0) {
  message = "writing feature-sg";
  goto abort_transaction;
 }
 if ((info->xn_ifp->if_capenable & IFCAP_LRO) != 0) {
  err = xs_printf(xst, node, "feature-gso-tcpv4", "%d", 1);
  if (err != 0) {
   message = "writing feature-gso-tcpv4";
   goto abort_transaction;
  }
 }
 if ((info->xn_ifp->if_capenable & IFCAP_RXCSUM) == 0) {
  err = xs_printf(xst, node, "feature-no-csum-offload", "%d", 1);
  if (err != 0) {
   message = "writing feature-no-csum-offload";
   goto abort_transaction;
  }
 }

 err = xs_transaction_end(xst, 0);
 if (err != 0) {
  if (err == EAGAIN)
   goto again;
  xenbus_dev_fatal(dev, err, "completing transaction");
  goto free;
 }

 return 0;

 abort_transaction:
 xenbus_dev_fatal(dev, err, "%s", message);
 abort_transaction_no_def_error:
 xs_transaction_end(xst, 1);
 free:
 netif_free(info);
 out:
 return (err);
}

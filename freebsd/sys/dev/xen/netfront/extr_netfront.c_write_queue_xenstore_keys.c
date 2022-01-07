
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int dummy; } ;
struct netfront_txq {int id; scalar_t__ xen_intr_handle; int ring_ref; } ;
struct netfront_rxq {int id; scalar_t__ xen_intr_handle; int ring_ref; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int) ;
 int snprintf (char*,size_t,char*,char const*,...) ;
 int strlen (char const*) ;
 int xen_intr_port (scalar_t__) ;
 int xenbus_dev_fatal (int ,int,char*,char const*) ;
 char* xenbus_get_node (int ) ;
 int xs_printf (struct xs_transaction,char*,char*,char*,int ) ;

__attribute__((used)) static int
write_queue_xenstore_keys(device_t dev,
    struct netfront_rxq *rxq,
    struct netfront_txq *txq,
    struct xs_transaction *xst, bool hierarchy)
{
 int err;
 const char *message;
 const char *node = xenbus_get_node(dev);
 char *path;
 size_t path_size;

 KASSERT(rxq->id == txq->id, ("Mismatch between RX and TX queue ids"));

 KASSERT(rxq->xen_intr_handle == txq->xen_intr_handle,
     ("Split event channels are not supported"));

 if (hierarchy) {
  path_size = strlen(node) + 10;
  path = malloc(path_size, M_DEVBUF, M_WAITOK|M_ZERO);
  snprintf(path, path_size, "%s/queue-%u", node, rxq->id);
 } else {
  path_size = strlen(node) + 1;
  path = malloc(path_size, M_DEVBUF, M_WAITOK|M_ZERO);
  snprintf(path, path_size, "%s", node);
 }

 err = xs_printf(*xst, path, "tx-ring-ref","%u", txq->ring_ref);
 if (err != 0) {
  message = "writing tx ring-ref";
  goto error;
 }
 err = xs_printf(*xst, path, "rx-ring-ref","%u", rxq->ring_ref);
 if (err != 0) {
  message = "writing rx ring-ref";
  goto error;
 }
 err = xs_printf(*xst, path, "event-channel", "%u",
     xen_intr_port(rxq->xen_intr_handle));
 if (err != 0) {
  message = "writing event-channel";
  goto error;
 }

 free(path, M_DEVBUF);

 return (0);

error:
 free(path, M_DEVBUF);
 xenbus_dev_fatal(dev, err, "%s", message);

 return (err);
}

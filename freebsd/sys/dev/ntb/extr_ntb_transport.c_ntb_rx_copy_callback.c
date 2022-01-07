
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int dummy; } ;
struct ntb_queue_entry {int flags; } ;


 int NTBT_DESC_DONE_FLAG ;
 int ntb_complete_rxc (struct ntb_transport_qp*) ;

__attribute__((used)) static inline void
ntb_rx_copy_callback(struct ntb_transport_qp *qp, void *data)
{
 struct ntb_queue_entry *entry;

 entry = data;
 entry->flags |= NTBT_DESC_DONE_FLAG;
 ntb_complete_rxc(qp);
}

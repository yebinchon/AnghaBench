
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int tx_max_frame; int tx_index; int tx_pkts; void* tx_mw; } ;
struct ntb_queue_entry {int len; struct ntb_payload_header* x_hdr; } ;
struct ntb_payload_header {int ver; int len; } ;


 int iowrite32 (int ,int *) ;
 int ntb_memcpy_tx (struct ntb_queue_entry*,void*) ;

__attribute__((used)) static void
ntb_async_tx(struct ntb_transport_qp *qp, struct ntb_queue_entry *entry)
{
 struct ntb_payload_header *hdr;
 void *offset;

 offset = qp->tx_mw + qp->tx_max_frame * qp->tx_index;
 hdr = (struct ntb_payload_header *)((char *)offset + qp->tx_max_frame -
     sizeof(struct ntb_payload_header));
 entry->x_hdr = hdr;

 iowrite32(entry->len, &hdr->len);
 iowrite32(qp->tx_pkts, &hdr->ver);

 ntb_memcpy_tx(entry, offset);
}

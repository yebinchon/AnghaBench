
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {unsigned long long qp_num; int tx_free_q; int ntb_tx_free_q_lock; int cb_data; int (* tx_handler ) (struct ntb_transport_qp*,int ,int *,scalar_t__) ;int tx_bytes; int dev; } ;
struct ntb_queue_entry {int flags; scalar_t__ len; int * buf; struct ntb_payload_header* x_hdr; struct ntb_transport_qp* qp; } ;
struct ntb_payload_header {int flags; int ver; } ;


 int CTR1 (int ,char*,struct ntb_payload_header*) ;
 int CTR3 (int ,char*,struct ntb_queue_entry*,int ,int ) ;
 int KTR_NTB ;
 int NTBT_DESC_DONE_FLAG ;
 int iowrite32 (int,int *) ;
 int m_freem (int *) ;
 int ntb_list_add (int *,struct ntb_queue_entry*,int *) ;
 int ntb_peer_db_set (int ,unsigned long long) ;
 int stub1 (struct ntb_transport_qp*,int ,int *,scalar_t__) ;

__attribute__((used)) static void
ntb_tx_copy_callback(void *data)
{
 struct ntb_queue_entry *entry = data;
 struct ntb_transport_qp *qp = entry->qp;
 struct ntb_payload_header *hdr = entry->x_hdr;

 iowrite32(entry->flags | NTBT_DESC_DONE_FLAG, &hdr->flags);
 CTR1(KTR_NTB, "TX: hdr %p set DESC_DONE", hdr);

 ntb_peer_db_set(qp->dev, 1ull << qp->qp_num);






 if (entry->len > 0) {
  qp->tx_bytes += entry->len;

  if (qp->tx_handler)
   qp->tx_handler(qp, qp->cb_data, entry->buf,
       entry->len);
  else
   m_freem(entry->buf);
  entry->buf = ((void*)0);
 }

 CTR3(KTR_NTB,
     "TX: entry %p sent. hdr->ver = %u, hdr->flags = 0x%x, Returning "
     "to tx_free_q", entry, hdr->ver, hdr->flags);
 ntb_list_add(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int dummy; } ;
struct ntb_queue_entry {unsigned int len; int * buf; struct ifnet* cb_data; } ;
struct ifnet {int dummy; } ;


 int CTR2 (int ,char*,...) ;
 unsigned int ENOMEM ;
 int KTR_NTB ;
 scalar_t__ m_devget (void*,unsigned int,int ,struct ifnet*,int *) ;
 int ntb_rx_copy_callback (struct ntb_transport_qp*,struct ntb_queue_entry*) ;
 int wmb () ;

__attribute__((used)) static void
ntb_memcpy_rx(struct ntb_transport_qp *qp, struct ntb_queue_entry *entry,
    void *offset)
{
 struct ifnet *ifp = entry->cb_data;
 unsigned int len = entry->len;

 CTR2(KTR_NTB, "RX: copying %d bytes from offset %p", len, offset);

 entry->buf = (void *)m_devget(offset, len, 0, ifp, ((void*)0));
 if (entry->buf == ((void*)0))
  entry->len = -ENOMEM;


 wmb();

 CTR2(KTR_NTB, "RX: copied entry %p to mbuf %p.", entry, entry->buf);
 ntb_rx_copy_callback(qp, entry);
}

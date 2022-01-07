
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_entry {int len; int * buf; } ;
struct mbuf {int dummy; } ;


 int CTR2 (int ,char*,int ,void*) ;
 int KTR_NTB ;
 int m_copydata (struct mbuf*,int ,int ,void*) ;
 int ntb_tx_copy_callback (struct ntb_queue_entry*) ;
 int wmb () ;

__attribute__((used)) static void
ntb_memcpy_tx(struct ntb_queue_entry *entry, void *offset)
{

 CTR2(KTR_NTB, "TX: copying %d bytes to offset %p", entry->len, offset);
 if (entry->buf != ((void*)0)) {
  m_copydata((struct mbuf *)entry->buf, 0, entry->len, offset);





  wmb();
 }

 ntb_tx_copy_callback(entry);
}

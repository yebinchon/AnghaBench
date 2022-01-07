
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;
struct ifnet {int dummy; } ;


 int MBUF_LEN (struct mbuf*) ;
 int NM_DEBUG_HOST ;
 struct mbuf* mbq_dequeue (struct mbq*) ;
 int mbq_fini (struct mbq*) ;
 int netmap_debug ;
 struct mbuf* nm_os_send_up (struct ifnet*,struct mbuf*,struct mbuf*) ;
 int nm_prinf (char*,struct mbuf*,int ) ;

__attribute__((used)) static void
netmap_send_up(struct ifnet *dst, struct mbq *q)
{
 struct mbuf *m;
 struct mbuf *head = ((void*)0), *prev = ((void*)0);



 while ((m = mbq_dequeue(q)) != ((void*)0)) {
  if (netmap_debug & NM_DEBUG_HOST)
   nm_prinf("sending up pkt %p size %d", m, MBUF_LEN(m));
  prev = nm_os_send_up(dst, m, prev);
  if (head == ((void*)0))
   head = prev;
 }
 if (head)
  nm_os_send_up(dst, ((void*)0), head);
 mbq_fini(q);
}

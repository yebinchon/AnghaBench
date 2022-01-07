
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* h; } ;
typedef TYPE_1__ m_pool_s ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ m_link_s ;
typedef int m_addr_t ;


 int MEMO_CLUSTER_SIZE ;
 int MEMO_SHIFT ;
 int M_FREEP (int) ;
 int printf (char*,void*,int) ;

__attribute__((used)) static void ___sym_mfree(m_pool_s *mp, void *ptr, int size)
{
 int i = 0;
 int s = (1 << MEMO_SHIFT);
 m_link_s *q;
 m_addr_t a, b;
 m_link_s *h = mp->h;





 if (size > MEMO_CLUSTER_SIZE)
  return;

 while (size > s) {
  s <<= 1;
  ++i;
 }

 a = (m_addr_t) ptr;

 while (1) {






  b = a ^ s;
  q = &h[i];
  while (q->next && q->next != (m_link_s *) b) {
   q = q->next;
  }
  if (!q->next) {
   ((m_link_s *) a)->next = h[i].next;
   h[i].next = (m_link_s *) a;
   break;
  }
  q->next = q->next->next;
  a = a & b;
  s <<= 1;
  ++i;
 }
}

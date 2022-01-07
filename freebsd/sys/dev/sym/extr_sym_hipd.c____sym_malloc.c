
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
typedef scalar_t__ m_addr_t ;


 int MEMO_CLUSTER_SIZE ;
 int MEMO_SHIFT ;
 scalar_t__ M_GETP () ;
 int printf (char*,int,void*) ;

__attribute__((used)) static void *___sym_malloc(m_pool_s *mp, int size)
{
 int i = 0;
 int s = (1 << MEMO_SHIFT);
 int j;
 m_addr_t a;
 m_link_s *h = mp->h;

 if (size > MEMO_CLUSTER_SIZE)
  return ((void*)0);

 while (size > s) {
  s <<= 1;
  ++i;
 }

 j = i;
 while (!h[j].next) {
  if (s == MEMO_CLUSTER_SIZE) {
   h[j].next = (m_link_s *) M_GETP();
   if (h[j].next)
    h[j].next->next = ((void*)0);
   break;
  }
  ++j;
  s <<= 1;
 }
 a = (m_addr_t) h[j].next;
 if (a) {
  h[j].next = h[j].next->next;
  while (j > i) {
   j -= 1;
   s >>= 1;
   h[j].next = (m_link_s *) (a+s);
   h[j].next->next = ((void*)0);
  }
 }



 return (void *) a;
}

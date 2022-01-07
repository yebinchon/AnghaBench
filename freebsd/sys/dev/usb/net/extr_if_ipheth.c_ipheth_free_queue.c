
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ipheth_free_queue(struct mbuf **ppm, uint8_t n)
{
 uint8_t x;

 for (x = 0; x != n; x++) {
  if (ppm[x] != ((void*)0)) {
   m_freem(ppm[x]);
   ppm[x] = ((void*)0);
  }
 }
}

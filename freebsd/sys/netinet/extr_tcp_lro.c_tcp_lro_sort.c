
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct lro_mbuf_sort {int seq; } ;


 int KASSERT (int,char*) ;
 int tcp_lro_msb_64 (int) ;

__attribute__((used)) static void
tcp_lro_sort(struct lro_mbuf_sort *parray, uint32_t size)
{
 struct lro_mbuf_sort temp;
 uint64_t ones;
 uint64_t zeros;
 uint32_t x;
 uint32_t y;

repeat:

 if (size <= 12) {
  for (x = 1; x < size; x++) {
   temp = parray[x];
   for (y = x; y > 0 && temp.seq < parray[y - 1].seq; y--)
    parray[y] = parray[y - 1];
   parray[y] = temp;
  }
  return;
 }


 ones = 0;
 zeros = 0;
 for (x = 0; x != size; x++) {
  ones |= parray[x].seq;
  zeros |= ~parray[x].seq;
 }


 ones &= zeros;
 if (ones == 0)
  return;


 ones = tcp_lro_msb_64(ones);





 for (x = y = 0; y != size; y++) {

  if (parray[y].seq & ones)
   continue;

  temp = parray[x];
  parray[x] = parray[y];
  parray[y] = temp;
  x++;
 }

 KASSERT(x != 0 && x != size, ("Memory is corrupted\n"));


 tcp_lro_sort(parray, x);


 parray += x;
 size -= x;
 goto repeat;
}

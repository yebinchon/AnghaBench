
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xive_queue {size_t q_index; int q_toggle; int q_mask; int * q_page; } ;


 int be32toh (int ) ;

__attribute__((used)) static int
xive_read_eq(struct xive_queue *q)
{
 uint32_t i = be32toh(q->q_page[q->q_index]);


 if ((i >> 31) == q->q_toggle)
  return (0);

 q->q_index = (q->q_index + 1) & q->q_mask;

 if (q->q_index == 0)
  q->q_toggle ^= 1;

 return (i & 0x7fffffff);
}

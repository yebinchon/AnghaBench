
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ cidx; scalar_t__ pidx_head; } ;
typedef scalar_t__ uint16_t ;
struct ifmp_ring {scalar_t__ size; } ;



__attribute__((used)) static inline uint16_t
space_available(struct ifmp_ring *r, union ring_state s)
{
 uint16_t x = r->size - 1;

 if (s.cidx == s.pidx_head)
  return (x);
 else if (s.cidx > s.pidx_head)
  return (s.cidx - s.pidx_head - 1);
 else
  return (x - s.pidx_head + s.cidx);
}

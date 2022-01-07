
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ pidx_head; scalar_t__ pidx_tail; scalar_t__ flags; int state; } ;
struct ifmp_ring {int state; } ;


 scalar_t__ STALLED ;

int
ifmp_ring_is_stalled(struct ifmp_ring *r)
{
 union ring_state s;

 s.state = r->state;
 if (s.pidx_head == s.pidx_tail && s.flags == STALLED)
  return (1);

 return (0);
}

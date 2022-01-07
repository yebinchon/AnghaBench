
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ cidx; scalar_t__ pidx_tail; scalar_t__ pidx_head; } ;
typedef int uint16_t ;


 int ABDICATED ;
 int BUSY ;
 int IDLE ;

__attribute__((used)) static inline uint16_t
state_to_flags(union ring_state s, int abdicate)
{

 if (s.cidx == s.pidx_tail)
  return (IDLE);
 else if (abdicate && s.pidx_tail != s.pidx_head)
  return (ABDICATED);

 return (BUSY);
}

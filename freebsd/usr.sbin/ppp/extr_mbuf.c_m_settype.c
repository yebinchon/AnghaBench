
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int m_type; scalar_t__ m_size; struct mbuf* m_next; } ;
struct TYPE_2__ {int octets; int fragments; } ;


 TYPE_1__* MemMap ;

void
m_settype(struct mbuf *bp, int type)
{
  for (; bp; bp = bp->m_next)
    if (type != bp->m_type) {
      MemMap[bp->m_type].fragments--;
      MemMap[bp->m_type].octets -= bp->m_size;
      bp->m_type = type;
      MemMap[type].fragments++;
      MemMap[type].octets += bp->m_size;
    }
}

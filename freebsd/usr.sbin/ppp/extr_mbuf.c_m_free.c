
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {size_t m_type; scalar_t__ m_size; struct mbuf* m_next; } ;
struct TYPE_4__ {int count; struct mbucket* next; } ;
struct TYPE_5__ {TYPE_1__ f; } ;
struct mbucket {TYPE_2__ u; } ;
struct TYPE_6__ {int octets; int fragments; } ;


 struct mbucket** M_BUCKET (scalar_t__) ;
 TYPE_3__* MemMap ;
 int mbuf_Frees ;

struct mbuf *
m_free(struct mbuf *bp)
{
  struct mbucket **mb, *f;
  struct mbuf *nbp;

  if ((f = (struct mbucket *)bp) != ((void*)0)) {
    MemMap[bp->m_type].fragments--;
    MemMap[bp->m_type].octets -= bp->m_size;

    nbp = bp->m_next;
    mb = M_BUCKET(bp->m_size);
    f->u.f.next = *mb;
    f->u.f.count = 1;
    *mb = f;

    mbuf_Frees++;
    bp = nbp;
  }

  return bp;
}

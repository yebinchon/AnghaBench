
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf_ext_pgs {scalar_t__ hdr_len; scalar_t__ trail_len; scalar_t__ npgs; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; } ;


 int M_NOMAP ;

__attribute__((used)) static int
frags_per_mbuf(struct mbuf *m)
{
 struct mbuf_ext_pgs *ext_pgs;
 int frags;

 if ((m->m_flags & M_NOMAP) == 0)
  return (1);
 ext_pgs = m->m_ext.ext_pgs;
 frags = 0;
 if (ext_pgs->hdr_len != 0)
  frags++;
 frags += ext_pgs->npgs;
 if (ext_pgs->trail_len != 0)
  frags++;

 return (frags);
}

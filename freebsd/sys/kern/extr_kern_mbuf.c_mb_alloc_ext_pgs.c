
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf_ext_pgs {int * so; int * tls; scalar_t__ trail_len; scalar_t__ hdr_len; scalar_t__ flags; scalar_t__ last_pg_len; scalar_t__ first_pg_off; scalar_t__ nrdy; scalar_t__ npgs; } ;
struct TYPE_2__ {int ext_count; int ext_free; scalar_t__ ext_size; struct mbuf_ext_pgs* ext_pgs; int ext_flags; int ext_type; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; int * m_data; } ;
typedef int m_ext_free_t ;


 int EXT_FLAG_EMBREF ;
 int EXT_PGS ;
 int MT_DATA ;
 int M_EXT ;
 int M_NOMAP ;
 int M_RDONLY ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_gethdr (int,int ) ;
 struct mbuf_ext_pgs* uma_zalloc (int ,int) ;
 int zone_extpgs ;

struct mbuf *
mb_alloc_ext_pgs(int how, bool pkthdr, m_ext_free_t ext_free)
{
 struct mbuf *m;
 struct mbuf_ext_pgs *ext_pgs;

 if (pkthdr)
  m = m_gethdr(how, MT_DATA);
 else
  m = m_get(how, MT_DATA);
 if (m == ((void*)0))
  return (((void*)0));

 ext_pgs = uma_zalloc(zone_extpgs, how);
 if (ext_pgs == ((void*)0)) {
  m_free(m);
  return (((void*)0));
 }
 ext_pgs->npgs = 0;
 ext_pgs->nrdy = 0;
 ext_pgs->first_pg_off = 0;
 ext_pgs->last_pg_len = 0;
 ext_pgs->flags = 0;
 ext_pgs->hdr_len = 0;
 ext_pgs->trail_len = 0;
 ext_pgs->tls = ((void*)0);
 ext_pgs->so = ((void*)0);
 m->m_data = ((void*)0);
 m->m_flags |= (M_EXT | M_RDONLY | M_NOMAP);
 m->m_ext.ext_type = EXT_PGS;
 m->m_ext.ext_flags = EXT_FLAG_EMBREF;
 m->m_ext.ext_count = 1;
 m->m_ext.ext_pgs = ext_pgs;
 m->m_ext.ext_size = 0;
 m->m_ext.ext_free = ext_free;
 return (m);
}

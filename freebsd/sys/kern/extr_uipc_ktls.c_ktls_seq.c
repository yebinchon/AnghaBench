
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {int sb_tls_seqno; } ;
struct mbuf_ext_pgs {int seqno; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; struct mbuf* m_next; } ;


 int KASSERT (int,char*) ;
 int M_NOMAP ;

void
ktls_seq(struct sockbuf *sb, struct mbuf *m)
{
 struct mbuf_ext_pgs *pgs;

 for (; m != ((void*)0); m = m->m_next) {
  KASSERT((m->m_flags & M_NOMAP) != 0,
      ("ktls_seq: mapped mbuf %p", m));

  pgs = m->m_ext.ext_pgs;
  pgs->seqno = sb->sb_tls_seqno;
  sb->sb_tls_seqno++;
 }
}

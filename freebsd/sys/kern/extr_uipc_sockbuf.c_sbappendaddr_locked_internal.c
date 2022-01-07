
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {struct mbuf* sb_mbtail; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct TYPE_2__ {scalar_t__ rsstype; scalar_t__ fibnum; scalar_t__ csum_flags; scalar_t__ flowid; int * rcvif; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 scalar_t__ MLEN ;
 int MT_SONAME ;
 int M_NOWAIT ;
 int SBLASTMBUFCHK (struct sockbuf*) ;
 int SBLASTRECORDCHK (struct sockbuf*) ;
 int SBLINKRECORD (struct sockbuf*,struct mbuf*) ;
 int bcopy (struct sockaddr const*,int ,scalar_t__) ;
 int caddr_t ;
 int m_clrprotoflags (struct mbuf*) ;
 struct mbuf* m_get (int ,int ) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;
 int mtod (struct mbuf*,int ) ;
 int sballoc (struct sockbuf*,struct mbuf*) ;

__attribute__((used)) static int
sbappendaddr_locked_internal(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control, struct mbuf *ctrl_last)
{
 struct mbuf *m, *n, *nlast;

 if (asa->sa_len > MLEN)
  return (0);

 m = m_get(M_NOWAIT, MT_SONAME);
 if (m == ((void*)0))
  return (0);
 m->m_len = asa->sa_len;
 bcopy(asa, mtod(m, caddr_t), asa->sa_len);
 if (m0) {
  m_clrprotoflags(m0);
  m_tag_delete_chain(m0, ((void*)0));





  m0->m_pkthdr.rcvif = ((void*)0);
  m0->m_pkthdr.flowid = 0;
  m0->m_pkthdr.csum_flags = 0;
  m0->m_pkthdr.fibnum = 0;
  m0->m_pkthdr.rsstype = 0;
 }
 if (ctrl_last)
  ctrl_last->m_next = m0;
 else
  control = m0;
 m->m_next = control;
 for (n = m; n->m_next != ((void*)0); n = n->m_next)
  sballoc(sb, n);
 sballoc(sb, n);
 nlast = n;
 SBLINKRECORD(sb, m);

 sb->sb_mbtail = nlast;
 SBLASTMBUFCHK(sb);

 SBLASTRECORDCHK(sb);
 return (1);
}

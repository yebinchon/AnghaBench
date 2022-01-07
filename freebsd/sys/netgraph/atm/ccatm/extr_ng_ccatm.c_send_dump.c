
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; int m_data; struct mbuf* m_next; } ;
struct ccnode {struct mbuf* dump_first; struct mbuf* dump_last; int * dump; } ;
struct ccdata {int dummy; } ;


 int ENOBUFS ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
send_dump(struct ccdata *data, void *uarg, const char *buf)
{
 struct mbuf *m;
 struct ccnode *priv = uarg;

 if (priv->dump == ((void*)0)) {
  m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m == ((void*)0))
   return (ENOBUFS);
  priv->dump_first = priv->dump_last = m;
  m->m_pkthdr.len = 0;
 } else {
  m = m_getcl(M_NOWAIT, MT_DATA, 0);
  if (m == ((void*)0)) {
   m_freem(priv->dump_first);
   return (ENOBUFS);
  }
  priv->dump_last->m_next = m;
  priv->dump_last = m;
 }

 strcpy(m->m_data, buf);
 priv->dump_first->m_pkthdr.len += (m->m_len = strlen(buf));

 return (0);
}

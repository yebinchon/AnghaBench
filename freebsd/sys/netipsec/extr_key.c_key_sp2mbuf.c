
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;
struct mbuf {size_t m_len; int m_data; } ;


 int MT_DATA ;
 int M_NOWAIT ;
 size_t key_getspreqmsglen (struct secpolicy*) ;
 scalar_t__ key_sp2msg (struct secpolicy*,int ,size_t*) ;
 int m_align (struct mbuf*,size_t) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get2 (size_t,int ,int ,int ) ;

__attribute__((used)) static struct mbuf *
key_sp2mbuf(struct secpolicy *sp)
{
 struct mbuf *m;
 size_t tlen;

 tlen = key_getspreqmsglen(sp);
 m = m_get2(tlen, M_NOWAIT, MT_DATA, 0);
 if (m == ((void*)0))
  return (((void*)0));
 m_align(m, tlen);
 m->m_len = tlen;
 if (key_sp2msg(sp, m->m_data, &tlen) != 0) {
  m_freem(m);
  return (((void*)0));
 }
 return (m);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct mdchain {int * md_top; } ;
struct mbuf {int m_len; } ;


 int M_WAITOK ;
 int m_cat (int *,struct mbuf*) ;
 int m_length (struct mbuf*,struct mbuf**) ;
 struct mbuf* m_split (struct mbuf*,int,int ) ;
 int md_initm (struct mdchain*,struct mbuf*) ;

__attribute__((used)) static int
smb_t2_placedata(struct mbuf *mtop, u_int16_t offset, u_int16_t count,
 struct mdchain *mdp)
{
 struct mbuf *m, *m0;
 int len;

 m0 = m_split(mtop, offset, M_WAITOK);
 len = m_length(m0, &m);
 m->m_len -= len - count;
 if (mdp->md_top == ((void*)0)) {
  md_initm(mdp, m0);
 } else
  m_cat(mdp->md_top, m0);
 return 0;
}

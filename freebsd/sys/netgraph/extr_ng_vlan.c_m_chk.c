
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int ENOBUFS ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;

__attribute__((used)) static __inline int
m_chk(struct mbuf **mp, int len)
{

 if ((*mp)->m_pkthdr.len < len) {
  m_freem((*mp));
  (*mp) = ((void*)0);
  return (EINVAL);
 }
 if ((*mp)->m_len < len && ((*mp) = m_pullup((*mp), len)) == ((void*)0))
  return (ENOBUFS);

 return (0);
}

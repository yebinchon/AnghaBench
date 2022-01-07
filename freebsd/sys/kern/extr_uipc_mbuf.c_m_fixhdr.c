
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int m_length (struct mbuf*,int *) ;

u_int
m_fixhdr(struct mbuf *m0)
{
 u_int len;

 len = m_length(m0, ((void*)0));
 m0->m_pkthdr.len = len;
 return (len);
}

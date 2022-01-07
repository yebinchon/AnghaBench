
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int printf (char*,struct mbuf*) ;

void
m_freem(struct mbuf *m)
{
 printf("free %p\n", m);
}

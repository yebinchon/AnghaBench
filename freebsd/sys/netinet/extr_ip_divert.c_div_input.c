
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int IPPROTO_DONE ;
 int KMOD_IPSTAT_INC (int ) ;
 int ips_noproto ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
div_input(struct mbuf **mp, int *offp, int proto)
{
 struct mbuf *m = *mp;

 KMOD_IPSTAT_INC(ips_noproto);
 m_freem(m);
 return (IPPROTO_DONE);
}

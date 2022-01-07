
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int IPPROTO_DONE ;
 int V_rsvp_on ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
X_rsvp_input(struct mbuf **mp, int *offp, int proto)
{
 struct mbuf *m;

 m = *mp;
 *mp = ((void*)0);
 if (!V_rsvp_on)
  m_freem(m);
 return (IPPROTO_DONE);
}

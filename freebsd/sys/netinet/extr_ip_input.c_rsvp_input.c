
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int IPPROTO_DONE ;
 int * V_ip_rsvpd ;
 int V_rsvp_on ;
 int m_freem (struct mbuf*) ;
 int rip_input (struct mbuf**,int*,int) ;
 int rsvp_input_p (struct mbuf**,int*,int) ;

int
rsvp_input(struct mbuf **mp, int *offp, int proto)
{
 struct mbuf *m;

 m = *mp;
 *mp = ((void*)0);

 if (rsvp_input_p) {
  *mp = m;
  rsvp_input_p(mp, offp, proto);
  return (IPPROTO_DONE);
 }






 if (!V_rsvp_on) {
  m_freem(m);
  return (IPPROTO_DONE);
 }

 if (V_ip_rsvpd != ((void*)0)) {
  *mp = m;
  rip_input(mp, offp, proto);
  return (IPPROTO_DONE);
 }

 m_freem(m);
 return (IPPROTO_DONE);
}

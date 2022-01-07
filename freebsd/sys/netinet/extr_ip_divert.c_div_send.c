
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int m_len; } ;
struct ip {int dummy; } ;


 int EINVAL ;
 int KMOD_IPSTAT_INC (int ) ;
 int div_output (struct socket*,struct mbuf*,struct sockaddr_in*,struct mbuf*) ;
 int ips_toosmall ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;

__attribute__((used)) static int
div_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct thread *td)
{


 if (m->m_len < sizeof (struct ip) &&
     (m = m_pullup(m, sizeof (struct ip))) == ((void*)0)) {
  KMOD_IPSTAT_INC(ips_toosmall);
  m_freem(m);
  return EINVAL;
 }


 return div_output(so, m, (struct sockaddr_in *)nam, control);
}

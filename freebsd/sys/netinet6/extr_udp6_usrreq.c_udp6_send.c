
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct mbuf {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int m_freem (struct mbuf*) ;
 int udp6_output (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct thread*) ;

__attribute__((used)) static int
udp6_send(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *addr, struct mbuf *control, struct thread *td)
{
 int error;

 if (addr) {
  if (addr->sa_len != sizeof(struct sockaddr_in6)) {
   error = EINVAL;
   goto bad;
  }
  if (addr->sa_family != AF_INET6) {
   error = EAFNOSUPPORT;
   goto bad;
  }
 }

 return (udp6_output(so, flags, m, addr, control, td));

bad:
 if (control)
  m_freem(control);
 m_freem(m);
 return (error);
}

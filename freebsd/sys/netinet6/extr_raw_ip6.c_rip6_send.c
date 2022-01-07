
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct thread {int dummy; } ;
struct socket {int so_state; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct mbuf {int dummy; } ;
struct inpcb {int in6p_faddr; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int EISCONN ;
 int ENOTCONN ;
 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int LOG_INFO ;
 int SS_ISCONNECTED ;
 int bcopy (int *,int *,int) ;
 int bzero (struct sockaddr_in6*,int) ;
 int log (int ,char*) ;
 int m_freem (struct mbuf*) ;
 int rip6_output (struct mbuf*,struct socket*,struct sockaddr_in6*,struct mbuf*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct thread *td)
{
 struct inpcb *inp;
 struct sockaddr_in6 tmp;
 struct sockaddr_in6 *dst;
 int ret;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_send: inp == NULL"));



 if (so->so_state & SS_ISCONNECTED) {
  if (nam) {
   m_freem(m);
   return (EISCONN);
  }

  bzero(&tmp, sizeof(tmp));
  tmp.sin6_family = AF_INET6;
  tmp.sin6_len = sizeof(struct sockaddr_in6);
  INP_RLOCK(inp);
  bcopy(&inp->in6p_faddr, &tmp.sin6_addr,
      sizeof(struct in6_addr));
  INP_RUNLOCK(inp);
  dst = &tmp;
 } else {
  if (nam == ((void*)0)) {
   m_freem(m);
   return (ENOTCONN);
  }
  if (nam->sa_len != sizeof(struct sockaddr_in6)) {
   m_freem(m);
   return (EINVAL);
  }
  tmp = *(struct sockaddr_in6 *)nam;
  dst = &tmp;

  if (dst->sin6_family == AF_UNSPEC) {





   log(LOG_INFO, "rip6 SEND: address family is "
       "unspec. Assume AF_INET6\n");
   dst->sin6_family = AF_INET6;
  } else if (dst->sin6_family != AF_INET6) {
   m_freem(m);
   return(EAFNOSUPPORT);
  }
 }
 ret = rip6_output(m, so, dst, control);
 return (ret);
}

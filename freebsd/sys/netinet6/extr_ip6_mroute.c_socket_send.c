
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;
 scalar_t__ sbappendaddr (int *,struct sockaddr*,struct mbuf*,struct mbuf*) ;
 int sorwakeup (struct socket*) ;

__attribute__((used)) static int
socket_send(struct socket *s, struct mbuf *mm, struct sockaddr_in6 *src)
{

 if (s) {
  if (sbappendaddr(&s->so_rcv,
     (struct sockaddr *)src,
     mm, (struct mbuf *)0) != 0) {
   sorwakeup(s);
   return (0);
  }
 }
 m_freem(mm);
 return (-1);
}

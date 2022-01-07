
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 int EOPNOTSUPP ;
 int NG_FREE_M (struct mbuf*) ;

int
ng_btsocket_l2cap_raw_send(struct socket *so, int flags, struct mbuf *m,
  struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
 NG_FREE_M(m);
 NG_FREE_M(control);

 return (EOPNOTSUPP);
}

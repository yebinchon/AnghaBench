
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int ENOTCONN ;
 int SOLISTENING (struct socket*) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct socket*,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ;

int
sosend(struct socket *so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags, struct thread *td)
{
 int error;

 CURVNET_SET(so->so_vnet);
 if (!SOLISTENING(so))
  error = so->so_proto->pr_usrreqs->pru_sosend(so, addr, uio,
      top, control, flags, td);
 else {
  m_freem(top);
  m_freem(control);
  error = ENOTCONN;
 }
 CURVNET_RESTORE();
 return (error);
}

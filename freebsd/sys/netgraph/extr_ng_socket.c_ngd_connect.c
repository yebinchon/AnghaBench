
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ngpcb {int dummy; } ;


 int EINVAL ;
 int ng_connect_data (struct sockaddr*,struct ngpcb* const) ;
 struct ngpcb* sotongpcb (struct socket*) ;

__attribute__((used)) static int
ngd_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct ngpcb *const pcbp = sotongpcb(so);

 if (pcbp == ((void*)0))
  return (EINVAL);
 return (ng_connect_data(nam, pcbp));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int EINVAL ;

int
ng_btsocket_rfcomm_control(struct socket *so, u_long cmd, caddr_t data,
  struct ifnet *ifp, struct thread *td)
{
 return (EINVAL);
}

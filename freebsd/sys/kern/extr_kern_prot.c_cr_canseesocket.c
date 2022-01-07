
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct socket {int so_cred; } ;


 int ENOENT ;
 scalar_t__ cr_canseeothergids (struct ucred*,int ) ;
 scalar_t__ cr_canseeotheruids (struct ucred*,int ) ;
 int mac_socket_check_visible (struct ucred*,struct socket*) ;
 int prison_check (struct ucred*,int ) ;

int
cr_canseesocket(struct ucred *cred, struct socket *so)
{
 int error;

 error = prison_check(cred, so->so_cred);
 if (error)
  return (ENOENT);





 if (cr_canseeotheruids(cred, so->so_cred))
  return (ENOENT);
 if (cr_canseeothergids(cred, so->so_cred))
  return (ENOENT);

 return (0);
}

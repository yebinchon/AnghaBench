
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;





 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int FALSE ;
 int M_SONAME ;
 int free (struct sockaddr*,int ) ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
__rpc_sockisbound(struct socket *so)
{
 struct sockaddr *sa;
 int error, bound;

 CURVNET_SET(so->so_vnet);
 error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
 CURVNET_RESTORE();
 if (error)
  return (0);

 switch (sa->sa_family) {
  case 130:
   bound = (((struct sockaddr_in *) sa)->sin_port != 0);
   break;





  case 128:

   bound = (((struct sockaddr_un *) sa)->sun_path[0] != '\0');
   break;
  default:
   bound = FALSE;
   break;
 }

 free(sa, M_SONAME);

 return bound;
}

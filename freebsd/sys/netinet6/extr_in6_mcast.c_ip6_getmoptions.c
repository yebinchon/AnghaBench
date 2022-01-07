
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct sockopt {int sopt_name; } ;
struct ip6_moptions {int im6o_multicast_loop; int im6o_multicast_hlim; TYPE_3__* im6o_multicast_ifp; } ;
struct inpcb {TYPE_2__* inp_socket; struct ip6_moptions* in6p_moptions; } ;
struct TYPE_6__ {int if_index; } ;
struct TYPE_5__ {TYPE_1__* so_proto; } ;
struct TYPE_4__ {scalar_t__ pr_protocol; scalar_t__ pr_type; } ;


 int EADDRNOTAVAIL ;
 int ENOPROTOOPT ;
 int EOPNOTSUPP ;
 int INP_UNLOCK_ASSERT (struct inpcb*) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IPPROTO_DIVERT ;




 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 int V_ip6_defmcasthlim ;
 int in6_mcast_loop ;
 int in6p_get_source_filters (struct inpcb*,struct sockopt*) ;
 int sooptcopyout (struct sockopt*,int *,int) ;

int
ip6_getmoptions(struct inpcb *inp, struct sockopt *sopt)
{
 struct ip6_moptions *im6o;
 int error;
 u_int optval;

 INP_WLOCK(inp);
 im6o = inp->in6p_moptions;




 if (inp->inp_socket->so_proto->pr_protocol == IPPROTO_DIVERT ||
     (inp->inp_socket->so_proto->pr_type != SOCK_RAW &&
     inp->inp_socket->so_proto->pr_type != SOCK_DGRAM)) {
  INP_WUNLOCK(inp);
  return (EOPNOTSUPP);
 }

 error = 0;
 switch (sopt->sopt_name) {
 case 129:
  if (im6o == ((void*)0) || im6o->im6o_multicast_ifp == ((void*)0)) {
   optval = 0;
  } else {
   optval = im6o->im6o_multicast_ifp->if_index;
  }
  INP_WUNLOCK(inp);
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 130:
  if (im6o == ((void*)0))
   optval = V_ip6_defmcasthlim;
  else
   optval = im6o->im6o_multicast_hlim;
  INP_WUNLOCK(inp);
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 128:
  if (im6o == ((void*)0))
   optval = in6_mcast_loop;
  else
   optval = im6o->im6o_multicast_loop;
  INP_WUNLOCK(inp);
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 131:
  if (im6o == ((void*)0)) {
   error = EADDRNOTAVAIL;
   INP_WUNLOCK(inp);
  } else {
   error = in6p_get_source_filters(inp, sopt);
  }
  break;

 default:
  INP_WUNLOCK(inp);
  error = ENOPROTOOPT;
  break;
 }

 INP_UNLOCK_ASSERT(inp);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct ip_moptions {int imo_multicast_vif; int imo_multicast_ttl; int imo_multicast_loop; } ;
struct inpcb {TYPE_2__* inp_socket; } ;
struct TYPE_4__ {TYPE_1__* so_proto; } ;
struct TYPE_3__ {scalar_t__ pr_protocol; scalar_t__ pr_type; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int INP_UNLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IPPROTO_DIVERT ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 int inp_block_unblock_source (struct inpcb*,struct sockopt*) ;
 struct ip_moptions* inp_findmoptions (struct inpcb*) ;
 int inp_join_group (struct inpcb*,struct sockopt*) ;
 int inp_leave_group (struct inpcb*,struct sockopt*) ;
 int inp_set_multicast_if (struct inpcb*,struct sockopt*) ;
 int inp_set_source_filters (struct inpcb*,struct sockopt*) ;
 int legal_vif_num (int) ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;

int
inp_setmoptions(struct inpcb *inp, struct sockopt *sopt)
{
 struct ip_moptions *imo;
 int error;

 error = 0;





 if (inp->inp_socket->so_proto->pr_protocol == IPPROTO_DIVERT ||
     (inp->inp_socket->so_proto->pr_type != SOCK_RAW &&
      inp->inp_socket->so_proto->pr_type != SOCK_DGRAM))
  return (EOPNOTSUPP);

 switch (sopt->sopt_name) {
 case 135: {
  int vifi;




  if (legal_vif_num == ((void*)0)) {
   error = EOPNOTSUPP;
   break;
  }
  error = sooptcopyin(sopt, &vifi, sizeof(int), sizeof(int));
  if (error)
   break;
  if (!legal_vif_num(vifi) && (vifi != -1)) {
   error = EINVAL;
   break;
  }
  imo = inp_findmoptions(inp);
  imo->imo_multicast_vif = vifi;
  INP_WUNLOCK(inp);
  break;
 }

 case 138:
  error = inp_set_multicast_if(inp, sopt);
  break;

 case 136: {
  u_char ttl;







  if (sopt->sopt_valsize == sizeof(u_char)) {
   error = sooptcopyin(sopt, &ttl, sizeof(u_char),
       sizeof(u_char));
   if (error)
    break;
  } else {
   u_int ittl;

   error = sooptcopyin(sopt, &ittl, sizeof(u_int),
       sizeof(u_int));
   if (error)
    break;
   if (ittl > 255) {
    error = EINVAL;
    break;
   }
   ttl = (u_char)ittl;
  }
  imo = inp_findmoptions(inp);
  imo->imo_multicast_ttl = ttl;
  INP_WUNLOCK(inp);
  break;
 }

 case 137: {
  u_char loop;







  if (sopt->sopt_valsize == sizeof(u_char)) {
   error = sooptcopyin(sopt, &loop, sizeof(u_char),
       sizeof(u_char));
   if (error)
    break;
  } else {
   u_int iloop;

   error = sooptcopyin(sopt, &iloop, sizeof(u_int),
         sizeof(u_int));
   if (error)
    break;
   loop = (u_char)iloop;
  }
  imo = inp_findmoptions(inp);
  imo->imo_multicast_loop = !!loop;
  INP_WUNLOCK(inp);
  break;
 }

 case 144:
 case 143:
 case 132:
 case 131:
  error = inp_join_group(inp, sopt);
  break;

 case 141:
 case 140:
 case 130:
 case 129:
  error = inp_leave_group(inp, sopt);
  break;

 case 142:
 case 134:
 case 133:
 case 128:
  error = inp_block_unblock_source(inp, sopt);
  break;

 case 139:
  error = inp_set_source_filters(inp, sopt);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 INP_UNLOCK_ASSERT(inp);

 return (error);
}

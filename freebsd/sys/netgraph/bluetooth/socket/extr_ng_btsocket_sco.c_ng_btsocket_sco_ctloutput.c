
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct sockopt {scalar_t__ sopt_level; int sopt_dir; int sopt_name; } ;
struct socket {int dummy; } ;
typedef TYPE_2__* ng_btsocket_sco_pcb_p ;
struct TYPE_5__ {int con_handle; int pcb_mtx; TYPE_1__* rt; int state; } ;
struct TYPE_4__ {int pkt_size; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int ENOTCONN ;
 int NG_BTSOCKET_SCO_OPEN ;
 scalar_t__ SOL_SCO ;




 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_sco_node ;
 TYPE_2__* so2sco_pcb (struct socket*) ;
 int sooptcopyout (struct sockopt*,int*,int) ;

int
ng_btsocket_sco_ctloutput(struct socket *so, struct sockopt *sopt)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);
        int error, tmp;

 if (ng_btsocket_sco_node == ((void*)0))
  return (EINVAL);
 if (pcb == ((void*)0))
  return (EINVAL);

 if (sopt->sopt_level != SOL_SCO)
  return (0);

 mtx_lock(&pcb->pcb_mtx);

 switch (sopt->sopt_dir) {
 case 131:
  if (pcb->state != NG_BTSOCKET_SCO_OPEN) {
   error = ENOTCONN;
   break;
  }

  switch (sopt->sopt_name) {
  case 128:
   tmp = pcb->rt->pkt_size;
   error = sooptcopyout(sopt, &tmp, sizeof(tmp));
   break;

  case 129:
   tmp = pcb->con_handle;
   error = sooptcopyout(sopt, &tmp, sizeof(tmp));
   break;

  default:
   error = EINVAL;
   break;
  }
  break;

 case 130:
  error = ENOPROTOOPT;
  break;

 default:
  error = EINVAL;
  break;
 }

 mtx_unlock(&pcb->pcb_mtx);

 return (error);
}

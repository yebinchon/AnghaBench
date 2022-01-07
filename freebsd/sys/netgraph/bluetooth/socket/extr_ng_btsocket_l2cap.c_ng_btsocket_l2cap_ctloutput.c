
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int v ;
struct sockopt {scalar_t__ sopt_level; int sopt_dir; int sopt_name; } ;
struct socket {int dummy; } ;
struct TYPE_5__ {int mtu; int flush_timo; int encryption; int flow; } ;
typedef TYPE_1__ ng_l2cap_cfg_opt_val_t ;
typedef TYPE_2__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_6__ {int imtu; int omtu; int iflow; int oflow; int flush_timo; int need_encrypt; int pcb_mtx; int state; } ;


 int EACCES ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int NG_BTSOCKET_L2CAP_CLOSED ;
 int NG_BTSOCKET_L2CAP_OPEN ;
 int NG_BTSOCKET_L2CAP_W4_ENC_CHANGE ;
 scalar_t__ SOL_L2CAP ;
 int bcopy (int *,int*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_l2cap_node ;
 TYPE_2__* so2l2cap_pcb (struct socket*) ;
 int sooptcopyin (struct sockopt*,TYPE_1__*,int,int) ;
 int sooptcopyout (struct sockopt*,int*,int) ;

int
ng_btsocket_l2cap_ctloutput(struct socket *so, struct sockopt *sopt)
{
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);
 int error = 0;
 ng_l2cap_cfg_opt_val_t v;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_node == ((void*)0))
  return (EINVAL);

 if (sopt->sopt_level != SOL_L2CAP)
  return (0);

 mtx_lock(&pcb->pcb_mtx);

 switch (sopt->sopt_dir) {
 case 135:
  switch (sopt->sopt_name) {
  case 130:
   error = sooptcopyout(sopt, &pcb->imtu,
      sizeof(pcb->imtu));
   break;

  case 128:
   error = sooptcopyout(sopt, &pcb->omtu,
      sizeof(pcb->omtu));
   break;

  case 131:
   error = sooptcopyout(sopt, &pcb->iflow,
      sizeof(pcb->iflow));
   break;

  case 129:
   error = sooptcopyout(sopt, &pcb->oflow,
      sizeof(pcb->oflow));
   break;

  case 132:
   error = sooptcopyout(sopt, &pcb->flush_timo,
      sizeof(pcb->flush_timo));
   break;
  case 133:
   error = sooptcopyout(sopt, &pcb->need_encrypt,
      sizeof(pcb->need_encrypt));
   break;


  default:
   error = ENOPROTOOPT;
   break;
  }
  break;

 case 134:
  if (pcb->state != NG_BTSOCKET_L2CAP_CLOSED) {
   error = EACCES;
   break;
  }

  switch (sopt->sopt_name) {
  case 130:
   error = sooptcopyin(sopt, &v, sizeof(v), sizeof(v.mtu));
   if (error == 0)
    pcb->imtu = v.mtu;
   break;

  case 129:
   error = sooptcopyin(sopt, &v, sizeof(v),sizeof(v.flow));
   if (error == 0)
    bcopy(&v.flow, &pcb->oflow, sizeof(pcb->oflow));
   break;

  case 132:
   error = sooptcopyin(sopt, &v, sizeof(v),
      sizeof(v.flush_timo));
   if (error == 0)
    pcb->flush_timo = v.flush_timo;
   break;
  case 133:
   if((pcb->state != NG_BTSOCKET_L2CAP_OPEN) &&
      (pcb->state != NG_BTSOCKET_L2CAP_W4_ENC_CHANGE)){
    error = sooptcopyin(sopt, &v, sizeof(v),
          sizeof(v.encryption));
    if(error == 0)
     pcb->need_encrypt = (v.encryption)?1:0;
   }else{
    error = EINVAL;
   }
   break;
  default:
   error = ENOPROTOOPT;
   break;
  }
  break;

 default:
  error = EINVAL;
  break;
 }

 mtx_unlock(&pcb->pcb_mtx);

 return (error);
}

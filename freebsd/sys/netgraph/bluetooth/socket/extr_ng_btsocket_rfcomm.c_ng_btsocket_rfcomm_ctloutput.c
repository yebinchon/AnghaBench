
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt {scalar_t__ sopt_level; int sopt_dir; int sopt_name; } ;
struct socket {int dummy; } ;
struct ng_btsocket_rfcomm_fc_info {int cfc; int reserved; int rx_cred; int tx_cred; int rmodem; int lmodem; } ;
typedef TYPE_1__* ng_btsocket_rfcomm_pcb_p ;
typedef int fcinfo ;
struct TYPE_3__ {int flags; int pcb_mtx; int rx_cred; int tx_cred; int rmodem; int lmodem; struct ng_btsocket_rfcomm_fc_info mtu; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int NG_BTSOCKET_RFCOMM_DLC_CFC ;
 scalar_t__ SOL_RFCOMM ;




 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* so2rfcomm_pcb (struct socket*) ;
 int sooptcopyout (struct sockopt*,struct ng_btsocket_rfcomm_fc_info*,int) ;

int
ng_btsocket_rfcomm_ctloutput(struct socket *so, struct sockopt *sopt)
{
 ng_btsocket_rfcomm_pcb_p pcb = so2rfcomm_pcb(so);
 struct ng_btsocket_rfcomm_fc_info fcinfo;
 int error = 0;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (sopt->sopt_level != SOL_RFCOMM)
  return (0);

 mtx_lock(&pcb->pcb_mtx);

 switch (sopt->sopt_dir) {
 case 131:
  switch (sopt->sopt_name) {
  case 128:
   error = sooptcopyout(sopt, &pcb->mtu, sizeof(pcb->mtu));
   break;

  case 129:
   fcinfo.lmodem = pcb->lmodem;
   fcinfo.rmodem = pcb->rmodem;
   fcinfo.tx_cred = pcb->tx_cred;
   fcinfo.rx_cred = pcb->rx_cred;
   fcinfo.cfc = (pcb->flags & NG_BTSOCKET_RFCOMM_DLC_CFC)?
    1 : 0;
   fcinfo.reserved = 0;

   error = sooptcopyout(sopt, &fcinfo, sizeof(fcinfo));
   break;

  default:
   error = ENOPROTOOPT;
   break;
  }
  break;

 case 130:
  switch (sopt->sopt_name) {
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

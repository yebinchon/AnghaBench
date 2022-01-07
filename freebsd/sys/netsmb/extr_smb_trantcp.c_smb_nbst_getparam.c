
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {int nbp_sndbuf; int nbp_rcvbuf; struct timespec nbp_timo; } ;


 int EINVAL ;




__attribute__((used)) static int
smb_nbst_getparam(struct smb_vc *vcp, int param, void *data)
{
 struct nbpcb *nbp = vcp->vc_tdata;

 switch (param) {
     case 129:
  *(int*)data = nbp->nbp_sndbuf;
  break;
     case 130:
  *(int*)data = nbp->nbp_rcvbuf;
  break;
     case 128:
  *(struct timespec*)data = nbp->nbp_timo;
  break;
     default:
  return EINVAL;
 }
 return 0;
}

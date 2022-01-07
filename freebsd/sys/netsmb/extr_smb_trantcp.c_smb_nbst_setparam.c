
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {void* nbp_selectid; } ;


 int EINVAL ;


__attribute__((used)) static int
smb_nbst_setparam(struct smb_vc *vcp, int param, void *data)
{
 struct nbpcb *nbp = vcp->vc_tdata;

 switch (param) {
     case 128:
  nbp->nbp_selectid = data;
  break;
     default:
  return EINVAL;
 }
 return 0;
}

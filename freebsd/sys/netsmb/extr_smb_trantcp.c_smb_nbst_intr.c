
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {int * nbp_tso; } ;


 int sorwakeup (int *) ;
 int sowwakeup (int *) ;

__attribute__((used)) static void
smb_nbst_intr(struct smb_vc *vcp)
{
 struct nbpcb *nbp = vcp->vc_tdata;

 if (nbp == ((void*)0) || nbp->nbp_tso == ((void*)0))
  return;
 sorwakeup(nbp->nbp_tso);
 sowwakeup(nbp->nbp_tso);
}

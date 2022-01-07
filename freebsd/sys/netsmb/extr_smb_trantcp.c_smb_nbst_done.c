
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {struct nbpcb* nbp_paddr; struct nbpcb* nbp_laddr; } ;


 int ENOTCONN ;
 int M_NBDATA ;
 int M_SONAME ;
 int free (struct nbpcb*,int ) ;
 int smb_nbst_disconnect (struct smb_vc*,struct thread*) ;

__attribute__((used)) static int
smb_nbst_done(struct smb_vc *vcp, struct thread *td)
{
 struct nbpcb *nbp = vcp->vc_tdata;

 if (nbp == ((void*)0))
  return ENOTCONN;
 smb_nbst_disconnect(vcp, td);
 if (nbp->nbp_laddr)
  free(nbp->nbp_laddr, M_SONAME);
 if (nbp->nbp_paddr)
  free(nbp->nbp_paddr, M_SONAME);
 free(nbp, M_NBDATA);
 return 0;
}

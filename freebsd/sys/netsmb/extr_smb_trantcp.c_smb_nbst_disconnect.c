
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {scalar_t__ nbp_state; struct socket* nbp_tso; int nbp_flags; } ;


 int ENOTCONN ;
 int NBF_CONNECTED ;
 scalar_t__ NBST_CLOSED ;
 scalar_t__ NBST_RETARGET ;
 int soclose (struct socket*) ;
 int soshutdown (struct socket*,int) ;

__attribute__((used)) static int
smb_nbst_disconnect(struct smb_vc *vcp, struct thread *td)
{
 struct nbpcb *nbp = vcp->vc_tdata;
 struct socket *so;

 if (nbp == ((void*)0) || nbp->nbp_tso == ((void*)0))
  return ENOTCONN;
 if ((so = nbp->nbp_tso) != ((void*)0)) {
  nbp->nbp_flags &= ~NBF_CONNECTED;
  nbp->nbp_tso = (struct socket *)((void*)0);
  soshutdown(so, 2);
  soclose(so);
 }
 if (nbp->nbp_state != NBST_RETARGET) {
  nbp->nbp_state = NBST_CLOSED;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr_nb {int dummy; } ;
struct sockaddr {int sa_len; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {int nbp_flags; struct sockaddr_nb* nbp_laddr; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_WAITOK ;
 int NBDEBUG (char*) ;
 int NBF_LOCADDR ;
 int NB_MINSALEN ;
 scalar_t__ sodupsockaddr (struct sockaddr*,int ) ;

__attribute__((used)) static int
smb_nbst_bind(struct smb_vc *vcp, struct sockaddr *sap, struct thread *td)
{
 struct nbpcb *nbp = vcp->vc_tdata;
 struct sockaddr_nb *snb;
 int error, slen;

 NBDEBUG("\n");
 error = EINVAL;
 do {
  if (nbp->nbp_flags & NBF_LOCADDR)
   break;




  if (sap == ((void*)0))
   break;
  slen = sap->sa_len;
  if (slen < NB_MINSALEN)
   break;
  snb = (struct sockaddr_nb*)sodupsockaddr(sap, M_WAITOK);
  if (snb == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  nbp->nbp_laddr = snb;
  nbp->nbp_flags |= NBF_LOCADDR;
  error = 0;
 } while(0);
 return error;
}

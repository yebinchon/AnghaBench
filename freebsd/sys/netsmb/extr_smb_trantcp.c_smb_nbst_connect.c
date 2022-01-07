
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct thread {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr_nb {struct sockaddr_in snb_addrin; } ;
struct sockaddr {int sa_len; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {struct timespec nbp_timo; struct sockaddr_nb* nbp_paddr; int * nbp_laddr; int * nbp_tso; } ;


 int EINVAL ;
 int EISCONN ;
 int ENOMEM ;
 int M_SONAME ;
 int M_WAITOK ;
 int NBDEBUG (char*) ;
 int NB_MINSALEN ;
 int free (struct sockaddr_nb*,int ) ;
 int getnanotime (struct timespec*) ;
 int nb_connect_in (struct nbpcb*,struct sockaddr_in*,struct thread*) ;
 int nbssn_rq_request (struct nbpcb*,struct thread*) ;
 int smb_nbst_disconnect (struct smb_vc*,struct thread*) ;
 scalar_t__ sodupsockaddr (struct sockaddr*,int ) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static int
smb_nbst_connect(struct smb_vc *vcp, struct sockaddr *sap, struct thread *td)
{
 struct nbpcb *nbp = vcp->vc_tdata;
 struct sockaddr_in sin;
 struct sockaddr_nb *snb;
 struct timespec ts1, ts2;
 int error, slen;

 NBDEBUG("\n");
 if (nbp->nbp_tso != ((void*)0))
  return EISCONN;
 if (nbp->nbp_laddr == ((void*)0))
  return EINVAL;
 slen = sap->sa_len;
 if (slen < NB_MINSALEN)
  return EINVAL;
 if (nbp->nbp_paddr) {
  free(nbp->nbp_paddr, M_SONAME);
  nbp->nbp_paddr = ((void*)0);
 }
 snb = (struct sockaddr_nb*)sodupsockaddr(sap, M_WAITOK);
 if (snb == ((void*)0))
  return ENOMEM;
 nbp->nbp_paddr = snb;
 sin = snb->snb_addrin;
 getnanotime(&ts1);
 error = nb_connect_in(nbp, &sin, td);
 if (error)
  return error;
 getnanotime(&ts2);
 timespecsub(&ts2, &ts1, &ts2);
 if (ts2.tv_sec == 0) {
  ts2.tv_sec = 1;
  ts2.tv_nsec = 0;
 }
 timespecadd(&ts2, &ts2, &nbp->nbp_timo);
 timespecadd(&nbp->nbp_timo, &ts2, &nbp->nbp_timo);
 timespecadd(&nbp->nbp_timo, &ts2, &nbp->nbp_timo);
 error = nbssn_rq_request(nbp, td);
 if (error)
  smb_nbst_disconnect(vcp, td);
 return error;
}

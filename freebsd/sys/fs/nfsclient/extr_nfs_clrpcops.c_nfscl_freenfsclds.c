
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* nfsess_cbslots; int nfsess_mtx; } ;
struct nfsclds {TYPE_2__ nfsclds_sess; int nfsclds_mtx; struct nfsclds* nfsclds_sockp; struct nfsclds* nr_nam; int nr_mtx; int nr_cred; } ;
struct TYPE_3__ {int * nfssl_reply; } ;


 int M_NFSCLDS ;
 int M_NFSSOCKREQ ;
 int M_SONAME ;
 int NFSFREECRED (int ) ;
 int NFSFREEMUTEX (int *) ;
 int NFSV4_CBSLOTS ;
 int free (struct nfsclds*,int ) ;
 int m_freem (int *) ;

void
nfscl_freenfsclds(struct nfsclds *dsp)
{
 int i;

 if (dsp == ((void*)0))
  return;
 if (dsp->nfsclds_sockp != ((void*)0)) {
  NFSFREECRED(dsp->nfsclds_sockp->nr_cred);
  NFSFREEMUTEX(&dsp->nfsclds_sockp->nr_mtx);
  free(dsp->nfsclds_sockp->nr_nam, M_SONAME);
  free(dsp->nfsclds_sockp, M_NFSSOCKREQ);
 }
 NFSFREEMUTEX(&dsp->nfsclds_mtx);
 NFSFREEMUTEX(&dsp->nfsclds_sess.nfsess_mtx);
 for (i = 0; i < NFSV4_CBSLOTS; i++) {
  if (dsp->nfsclds_sess.nfsess_cbslots[i].nfssl_reply != ((void*)0))
   m_freem(
       dsp->nfsclds_sess.nfsess_cbslots[i].nfssl_reply);
 }
 free(dsp, M_NFSCLDS);
}

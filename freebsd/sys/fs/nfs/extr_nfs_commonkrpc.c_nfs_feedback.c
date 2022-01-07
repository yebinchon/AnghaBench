
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct nfsmount {scalar_t__ nm_tprintf_delay; } ;
struct nfs_feedback_arg {int nf_tprintfmsg; int nf_td; struct nfsmount* nf_mount; scalar_t__ nf_lastmsg; } ;





 scalar_t__ NFSD_MONOSEC ;
 int NFSSTA_TIMEO ;
 int TRUE ;
 int nfs_down (struct nfsmount*,int ,char*,int ,int ) ;
 int nfs_up (struct nfsmount*,int ,char*,int ,int ) ;

__attribute__((used)) static void
nfs_feedback(int type, int proc, void *arg)
{
 struct nfs_feedback_arg *nf = (struct nfs_feedback_arg *) arg;
 struct nfsmount *nmp = nf->nf_mount;
 time_t now;

 switch (type) {
 case 128:
 case 129:
  now = NFSD_MONOSEC;
  if (nf->nf_lastmsg + nmp->nm_tprintf_delay < now) {
   nfs_down(nmp, nf->nf_td,
       "not responding", 0, NFSSTA_TIMEO);
   nf->nf_tprintfmsg = TRUE;
   nf->nf_lastmsg = now;
  }
  break;

 case 130:
  nfs_up(nf->nf_mount, nf->nf_td,
      "is alive again", NFSSTA_TIMEO, nf->nf_tprintfmsg);
  break;
 }
}

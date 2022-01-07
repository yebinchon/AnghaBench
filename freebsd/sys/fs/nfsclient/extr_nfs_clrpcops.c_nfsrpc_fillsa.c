
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_port; int sin6_len; int sin6_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int nr_vers; struct sockaddr* nr_nam; int nr_mtx; int nr_cred; int nr_prog; int nr_sotype; } ;
struct nfssockreq {int nr_vers; struct nfssockreq* nr_nam; int nr_mtx; int nr_cred; int nr_prog; int nr_sotype; } ;
struct TYPE_5__ {int * nr_cred; scalar_t__ nr_nam; } ;
struct nfsmount {int nm_sess; TYPE_2__ nm_sockreq; struct nfsclclient* nm_clp; } ;
struct TYPE_6__ {scalar_t__ nfsess_defunct; int nfsess_sequenceid; int nfsess_mtx; } ;
struct nfsclds {int nfsclds_flags; TYPE_3__ nfsclds_sess; struct sockaddr* nfsclds_sockp; int nfsclds_mtx; int nfsclds_expire; } ;
struct nfsclclient {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef scalar_t__ sa_family_t ;
typedef enum nfsclds_state { ____Placeholder_nfsclds_state } nfsclds_state ;
typedef int NFSPROC_T ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EPERM ;
 scalar_t__ IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int INT32_MAX ;
 int KASSERT (int ,char*) ;
 int MTX_DEF ;
 int M_NFSCLDS ;
 int M_NFSSOCKREQ ;
 int M_SONAME ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSBCOPY (int *,int *,int) ;
 int NFSCLDS_DS ;
 int NFSCLDS_SAMECONN ;
 int NFSCL_DEBUG (int,char*,...) ;
 int NFSDSP_NOTFOUND ;
 int NFSDSP_USETHISSESSION ;
 int NFSFREECRED (int ) ;
 int NFSFREEMUTEX (int *) ;
 int NFSLOCKCLSTATE () ;
 int NFSLOCKDS (struct nfsclds*) ;
 int NFSLOCKMNT (struct nfsmount*) ;
 int NFSUNLOCKCLSTATE () ;
 int NFSUNLOCKDS (struct nfsclds*) ;
 int NFSUNLOCKMNT (struct nfsmount*) ;
 int NFSV4EXCH_USEPNFSDS ;
 int NFS_PROG ;
 int NFS_VER4 ;
 int SOCK_STREAM ;
 struct nfsclds* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct nfsclds*,int ) ;
 struct nfsclds* TAILQ_NEXT (struct nfsclds*,int ) ;
 int crhold (int *) ;
 int free (struct sockaddr*,int ) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int newnfs_connect (struct nfsmount*,struct sockaddr*,int *,int *,int ) ;
 int newnfs_disconnect (struct sockaddr*) ;
 scalar_t__ nfscl_dssameconn ;
 int nfscl_freenfsclds (struct nfsclds*) ;
 int nfscl_getsameserver (struct nfsmount*,struct nfsclds*,struct nfsclds**,int *) ;
 int nfsclds_list ;
 int nfsrpc_createsession (struct nfsmount*,TYPE_3__*,struct sockaddr*,int ,int ,int ,int *) ;
 int nfsrpc_exchangeid (struct nfsmount*,struct nfsclclient*,struct sockaddr*,int ,struct nfsclds**,int ,int *) ;

__attribute__((used)) static int
nfsrpc_fillsa(struct nfsmount *nmp, struct sockaddr_in *sin,
    struct sockaddr_in6 *sin6, sa_family_t af, int vers, struct nfsclds **dspp,
    NFSPROC_T *p)
{
 struct sockaddr_in *msad, *sad;
 struct sockaddr_in6 *msad6, *sad6;
 struct nfsclclient *clp;
 struct nfssockreq *nrp;
 struct nfsclds *dsp, *tdsp;
 int error;
 enum nfsclds_state retv;
 uint32_t sequenceid;

 KASSERT(nmp->nm_sockreq.nr_cred != ((void*)0),
     ("nfsrpc_fillsa: NULL nr_cred"));
 NFSLOCKCLSTATE();
 clp = nmp->nm_clp;
 NFSUNLOCKCLSTATE();
 if (clp == ((void*)0))
  return (EPERM);
 if (af == AF_INET) {
  NFSLOCKMNT(nmp);






  msad = (struct sockaddr_in *)nmp->nm_sockreq.nr_nam;
  tdsp = TAILQ_FIRST(&nmp->nm_sess);
  while (tdsp != ((void*)0)) {
   if (msad != ((void*)0) && msad->sin_family == AF_INET &&
       sin->sin_addr.s_addr == msad->sin_addr.s_addr &&
       sin->sin_port == msad->sin_port &&
       (tdsp->nfsclds_flags & NFSCLDS_DS) != 0 &&
       tdsp->nfsclds_sess.nfsess_defunct == 0) {
    *dspp = tdsp;
    NFSUNLOCKMNT(nmp);
    NFSCL_DEBUG(4, "fnd same addr\n");
    return (0);
   }
   tdsp = TAILQ_NEXT(tdsp, nfsclds_list);
   if (tdsp != ((void*)0) && tdsp->nfsclds_sockp != ((void*)0))
    msad = (struct sockaddr_in *)
        tdsp->nfsclds_sockp->nr_nam;
   else
    msad = ((void*)0);
  }
  NFSUNLOCKMNT(nmp);


  sad = malloc(sizeof(*sad), M_SONAME, M_WAITOK | M_ZERO);
  sad->sin_len = sizeof(*sad);
  sad->sin_family = AF_INET;
  sad->sin_port = sin->sin_port;
  sad->sin_addr.s_addr = sin->sin_addr.s_addr;
  nrp = malloc(sizeof(*nrp), M_NFSSOCKREQ, M_WAITOK | M_ZERO);
  nrp->nr_nam = (struct sockaddr *)sad;
 } else if (af == AF_INET6) {
  NFSLOCKMNT(nmp);






  msad6 = (struct sockaddr_in6 *)nmp->nm_sockreq.nr_nam;
  tdsp = TAILQ_FIRST(&nmp->nm_sess);
  while (tdsp != ((void*)0)) {
   if (msad6 != ((void*)0) && msad6->sin6_family == AF_INET6 &&
       IN6_ARE_ADDR_EQUAL(&sin6->sin6_addr,
       &msad6->sin6_addr) &&
       sin6->sin6_port == msad6->sin6_port &&
       (tdsp->nfsclds_flags & NFSCLDS_DS) != 0 &&
       tdsp->nfsclds_sess.nfsess_defunct == 0) {
    *dspp = tdsp;
    NFSUNLOCKMNT(nmp);
    return (0);
   }
   tdsp = TAILQ_NEXT(tdsp, nfsclds_list);
   if (tdsp != ((void*)0) && tdsp->nfsclds_sockp != ((void*)0))
    msad6 = (struct sockaddr_in6 *)
        tdsp->nfsclds_sockp->nr_nam;
   else
    msad6 = ((void*)0);
  }
  NFSUNLOCKMNT(nmp);


  sad6 = malloc(sizeof(*sad6), M_SONAME, M_WAITOK | M_ZERO);
  sad6->sin6_len = sizeof(*sad6);
  sad6->sin6_family = AF_INET6;
  sad6->sin6_port = sin6->sin6_port;
  NFSBCOPY(&sin6->sin6_addr, &sad6->sin6_addr,
      sizeof(struct in6_addr));
  nrp = malloc(sizeof(*nrp), M_NFSSOCKREQ, M_WAITOK | M_ZERO);
  nrp->nr_nam = (struct sockaddr *)sad6;
 } else
  return (EPERM);

 nrp->nr_sotype = SOCK_STREAM;
 mtx_init(&nrp->nr_mtx, "nfssock", ((void*)0), MTX_DEF);
 nrp->nr_prog = NFS_PROG;
 nrp->nr_vers = vers;
 nrp->nr_cred = crhold(nmp->nm_sockreq.nr_cred);
 error = newnfs_connect(nmp, nrp, ((void*)0), p, 0);
 NFSCL_DEBUG(3, "DS connect=%d\n", error);

 dsp = ((void*)0);

 if (error == 0) {
  if (vers == NFS_VER4) {
   error = nfsrpc_exchangeid(nmp, clp, nrp,
       NFSV4EXCH_USEPNFSDS, &dsp, nrp->nr_cred, p);
   NFSCL_DEBUG(3, "DS exchangeid=%d\n", error);
   if (error != 0)
    newnfs_disconnect(nrp);
  } else {
   dsp = malloc(sizeof(struct nfsclds), M_NFSCLDS,
       M_WAITOK | M_ZERO);
   dsp->nfsclds_flags |= NFSCLDS_DS;
   dsp->nfsclds_expire = INT32_MAX;
   mtx_init(&dsp->nfsclds_mtx, "nfsds", ((void*)0), MTX_DEF);
   mtx_init(&dsp->nfsclds_sess.nfsess_mtx, "nfssession",
       ((void*)0), MTX_DEF);
  }
 }
 if (error == 0) {
  dsp->nfsclds_sockp = nrp;
  if (vers == NFS_VER4) {
   NFSLOCKMNT(nmp);
   retv = nfscl_getsameserver(nmp, dsp, &tdsp,
       &sequenceid);
   NFSCL_DEBUG(3, "getsame ret=%d\n", retv);
   if (retv == NFSDSP_USETHISSESSION &&
       nfscl_dssameconn != 0) {
    NFSLOCKDS(tdsp);
    tdsp->nfsclds_flags |= NFSCLDS_SAMECONN;
    NFSUNLOCKDS(tdsp);
    NFSUNLOCKMNT(nmp);




    (void)newnfs_disconnect(nrp);
    nfscl_freenfsclds(dsp);
    *dspp = tdsp;
    return (0);
   }
   if (retv == NFSDSP_NOTFOUND)
    sequenceid =
        dsp->nfsclds_sess.nfsess_sequenceid;
   NFSUNLOCKMNT(nmp);
   error = nfsrpc_createsession(nmp, &dsp->nfsclds_sess,
       nrp, sequenceid, 0, nrp->nr_cred, p);
   NFSCL_DEBUG(3, "DS createsess=%d\n", error);
  }
 } else {
  NFSFREECRED(nrp->nr_cred);
  NFSFREEMUTEX(&nrp->nr_mtx);
  free(nrp->nr_nam, M_SONAME);
  free(nrp, M_NFSSOCKREQ);
 }
 if (error == 0) {
  NFSCL_DEBUG(3, "add DS session\n");






  NFSLOCKMNT(nmp);
  TAILQ_INSERT_TAIL(&nmp->nm_sess, dsp, nfsclds_list);
  NFSUNLOCKMNT(nmp);
  *dspp = dsp;
 } else if (dsp != ((void*)0)) {
  newnfs_disconnect(nrp);
  nfscl_freenfsclds(dsp);
 }
 return (error);
}

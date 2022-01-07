
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfslayouthash {int dummy; } ;
struct nfsdevice {int dummy; } ;
struct nfsd_nfsd_args {char* addr; char* dnshost; char* dspath; char* mdspath; int mirrorcnt; int addrlen; int dnshostlen; int dspathlen; int mdspathlen; } ;
struct TYPE_3__ {int list; int mtx; } ;
typedef int NFSPROC_T ;


 int ENXIO ;
 int MTX_DEF ;
 int M_NFSDSESSION ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* mallocarray (int,int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 TYPE_1__* nfslayouthash ;
 int nfsrv_allocdevid (struct nfsdevice*,char*,char*) ;
 int nfsrv_devidcnt ;
 int nfsrv_faildscnt ;
 int nfsrv_freealldevids () ;
 int nfsrv_layouthashsize ;
 int nfsrv_layouthighwater ;
 int nfsrv_maxpnfsmirror ;
 int nfsrv_setdsserver (char*,char*,int *,struct nfsdevice**) ;
 scalar_t__ strlen (char*) ;

int
nfsrv_createdevids(struct nfsd_nfsd_args *args, NFSPROC_T *p)
{
 struct nfsdevice *ds;
 char *addrp, *dnshostp, *dspathp, *mdspathp;
 int error, i;

 addrp = args->addr;
 dnshostp = args->dnshost;
 dspathp = args->dspath;
 mdspathp = args->mdspath;
 nfsrv_maxpnfsmirror = args->mirrorcnt;
 if (addrp == ((void*)0) || dnshostp == ((void*)0) || dspathp == ((void*)0) ||
     mdspathp == ((void*)0))
  return (0);





 while (addrp < (args->addr + args->addrlen) &&
     dnshostp < (args->dnshost + args->dnshostlen) &&
     dspathp < (args->dspath + args->dspathlen) &&
     mdspathp < (args->mdspath + args->mdspathlen)) {
  error = nfsrv_setdsserver(dspathp, mdspathp, p, &ds);
  if (error != 0) {

   nfsrv_freealldevids();
   nfsrv_devidcnt = 0;
   return (ENXIO);
  }
  nfsrv_allocdevid(ds, addrp, dnshostp);
  addrp += (strlen(addrp) + 1);
  dnshostp += (strlen(dnshostp) + 1);
  dspathp += (strlen(dspathp) + 1);
  mdspathp += (strlen(mdspathp) + 1);
 }
 if (nfsrv_devidcnt < nfsrv_maxpnfsmirror) {

  nfsrv_freealldevids();
  nfsrv_devidcnt = 0;
  nfsrv_maxpnfsmirror = 1;
  return (ENXIO);
 }

 nfsrv_faildscnt = nfsrv_maxpnfsmirror - 1;





 if (nfslayouthash == ((void*)0)) {
  nfsrv_layouthashsize = nfsrv_layouthighwater / 100;
  if (nfsrv_layouthashsize < 100)
   nfsrv_layouthashsize = 100;
  nfslayouthash = mallocarray(nfsrv_layouthashsize,
      sizeof(struct nfslayouthash), M_NFSDSESSION, M_WAITOK |
      M_ZERO);
  for (i = 0; i < nfsrv_layouthashsize; i++) {
   mtx_init(&nfslayouthash[i].mtx, "nfslm", ((void*)0), MTX_DEF);
   TAILQ_INIT(&nfslayouthash[i].list);
  }
 }
 return (0);
}

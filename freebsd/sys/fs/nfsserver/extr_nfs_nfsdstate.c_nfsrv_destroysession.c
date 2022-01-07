
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nfsrv_descript {int nd_flag; int nd_sessionid; } ;


 int ND_HASSEQUENCE ;
 int ND_LASTOP ;
 int NFSBCMP (int *,int ,int ) ;
 int NFSERR_BADSESSION ;
 int NFSLOCKV4ROOTMUTEX () ;
 int NFSUNLOCKV4ROOTMUTEX () ;
 int NFSV4ROOTLOCKMUTEXPTR ;
 int NFSX_V4SESSIONID ;
 int nfsrv_freesession (int *,int *) ;
 int nfsv4_lock (int *,int,int *,int ,int *) ;
 int nfsv4_relref (int *) ;
 int nfsv4_unlock (int *,int) ;
 int nfsv4rootfs_lock ;

int
nfsrv_destroysession(struct nfsrv_descript *nd, uint8_t *sessionid)
{
 int error, igotlock, samesess;

 samesess = 0;
 if (!NFSBCMP(sessionid, nd->nd_sessionid, NFSX_V4SESSIONID) &&
     (nd->nd_flag & ND_HASSEQUENCE) != 0) {
  samesess = 1;
  if ((nd->nd_flag & ND_LASTOP) == 0)
   return (NFSERR_BADSESSION);
 }


 NFSLOCKV4ROOTMUTEX();
 nfsv4_relref(&nfsv4rootfs_lock);
 do {
  igotlock = nfsv4_lock(&nfsv4rootfs_lock, 1, ((void*)0),
      NFSV4ROOTLOCKMUTEXPTR, ((void*)0));
 } while (igotlock == 0);
 NFSUNLOCKV4ROOTMUTEX();

 error = nfsrv_freesession(((void*)0), sessionid);
 if (error == 0 && samesess != 0)
  nd->nd_flag &= ~ND_HASSEQUENCE;

 NFSLOCKV4ROOTMUTEX();
 nfsv4_unlock(&nfsv4rootfs_lock, 1);
 NFSUNLOCKV4ROOTMUTEX();
 return (error);
}

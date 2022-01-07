
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct nfscllayout {int nfsly_flags; int nfsly_lock; scalar_t__ nfsly_timestamp; } ;
struct nfsclflayout {int dummy; } ;
struct nfsclclient {int nfsc_layout; TYPE_1__* nfsc_nmp; } ;
typedef int mount_t ;
struct TYPE_2__ {int nm_mountp; } ;


 int NFSCLSTATEMUTEXPTR ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 scalar_t__ NFSD_MONOSEC ;
 int NFSLOCKCLSTATE () ;
 int NFSLY_RECALL ;
 int NFSUNLOCKCLSTATE () ;
 int NFSV4OPEN_ACCESSREAD ;
 int TAILQ_INSERT_HEAD (int *,struct nfscllayout*,int ) ;
 int TAILQ_REMOVE (int *,struct nfscllayout*,int ) ;
 struct nfscllayout* nfscl_findlayout (struct nfsclclient*,int *,int) ;
 int nfscl_findlayoutforio (struct nfscllayout*,int ,int ,struct nfsclflayout**) ;
 int nfsly_list ;
 int nfsv4_getref (int *,int *,int ,int ) ;
 int nfsv4_lock (int *,int,int *,int ,int ) ;

struct nfscllayout *
nfscl_getlayout(struct nfsclclient *clp, uint8_t *fhp, int fhlen,
    uint64_t off, struct nfsclflayout **retflpp, int *recalledp)
{
 struct nfscllayout *lyp;
 mount_t mp;
 int error, igotlock;

 mp = clp->nfsc_nmp->nm_mountp;
 *recalledp = 0;
 *retflpp = ((void*)0);
 NFSLOCKCLSTATE();
 lyp = nfscl_findlayout(clp, fhp, fhlen);
 if (lyp != ((void*)0)) {
  if ((lyp->nfsly_flags & NFSLY_RECALL) == 0) {
   TAILQ_REMOVE(&clp->nfsc_layout, lyp, nfsly_list);
   TAILQ_INSERT_HEAD(&clp->nfsc_layout, lyp, nfsly_list);
   lyp->nfsly_timestamp = NFSD_MONOSEC + 120;
   error = nfscl_findlayoutforio(lyp, off,
       NFSV4OPEN_ACCESSREAD, retflpp);
   if (error == 0)
    nfsv4_getref(&lyp->nfsly_lock, ((void*)0),
        NFSCLSTATEMUTEXPTR, mp);
   else {
    do {
     igotlock = nfsv4_lock(&lyp->nfsly_lock,
         1, ((void*)0), NFSCLSTATEMUTEXPTR, mp);
    } while (igotlock == 0 && !NFSCL_FORCEDISM(mp));
    *retflpp = ((void*)0);
   }
   if (NFSCL_FORCEDISM(mp)) {
    lyp = ((void*)0);
    *recalledp = 1;
   }
  } else {
   lyp = ((void*)0);
   *recalledp = 1;
  }
 }
 NFSUNLOCKCLSTATE();
 return (lyp);
}

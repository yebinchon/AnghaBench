
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {scalar_t__ nm_bufq; int nm_bufqiods; scalar_t__ nm_bufqlen; scalar_t__ nm_bufqwant; } ;
struct buf {int b_flags; scalar_t__ b_iocmd; int b_wcred; int b_vp; int b_rcred; } ;


 int ASYNCIO ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int B_DIRECT ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 scalar_t__ NFSIOD_AVAILABLE ;
 scalar_t__ NFSIOD_NOT_AVAILABLE ;
 int NFSLOCKIOD () ;
 int NFSUNLOCKIOD () ;
 int NFS_DPF (int ,char*) ;
 int PCATCH ;
 int PWAIT ;
 struct buf* TAILQ_FIRST (scalar_t__*) ;
 int TAILQ_REMOVE (scalar_t__*,struct buf*,int ) ;
 int b_freelist ;
 int hz ;
 int kproc_exit (int) ;
 int msleep (scalar_t__*,int *,int,char*,int) ;
 int ncl_doio (int ,struct buf*,int ,int *,int ) ;
 int ncl_doio_directwrite (struct buf*) ;
 int ncl_iod_mutex ;
 int ncl_iodmax ;
 struct nfsmount** ncl_iodmount ;
 scalar_t__* ncl_iodwant ;
 scalar_t__ ncl_numasync ;
 int* nfs_asyncdaemon ;
 scalar_t__ nfs_defect ;
 int nfs_iodmaxidle ;
 int nfs_iodmin ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
nfssvc_iod(void *instance)
{
 struct buf *bp;
 struct nfsmount *nmp;
 int myiod, timo;
 int error = 0;

 NFSLOCKIOD();
 myiod = (int *)instance - nfs_asyncdaemon;



 for (;;) {
     while (((nmp = ncl_iodmount[myiod]) == ((void*)0))
     || !TAILQ_FIRST(&nmp->nm_bufq)) {
  if (myiod >= ncl_iodmax)
   goto finish;
  if (nmp)
   nmp->nm_bufqiods--;
  if (ncl_iodwant[myiod] == NFSIOD_NOT_AVAILABLE)
   ncl_iodwant[myiod] = NFSIOD_AVAILABLE;
  ncl_iodmount[myiod] = ((void*)0);



  timo = (myiod < nfs_iodmin) ? 0 : nfs_iodmaxidle * hz;
  error = msleep(&ncl_iodwant[myiod], &ncl_iod_mutex, PWAIT | PCATCH,
      "-", timo);
  if (error) {
   nmp = ncl_iodmount[myiod];





   if (nmp && TAILQ_FIRST(&nmp->nm_bufq))
    error = 0;
   break;
  }
     }
     if (error)
      break;
     while ((bp = TAILQ_FIRST(&nmp->nm_bufq)) != ((void*)0)) {

  TAILQ_REMOVE(&nmp->nm_bufq, bp, b_freelist);
  nmp->nm_bufqlen--;
  if (nmp->nm_bufqwant && nmp->nm_bufqlen <= ncl_numasync) {
      nmp->nm_bufqwant = 0;
      wakeup(&nmp->nm_bufq);
  }
  NFSUNLOCKIOD();
  if (bp->b_flags & B_DIRECT) {
   KASSERT((bp->b_iocmd == BIO_WRITE), ("nfscvs_iod: BIO_WRITE not set"));
   (void)ncl_doio_directwrite(bp);
  } else {
   if (bp->b_iocmd == BIO_READ)
    (void) ncl_doio(bp->b_vp, bp, bp->b_rcred,
        ((void*)0), 0);
   else
    (void) ncl_doio(bp->b_vp, bp, bp->b_wcred,
        ((void*)0), 0);
  }
  NFSLOCKIOD();




  nmp = ncl_iodmount[myiod];
  if (nmp == ((void*)0))
   break;





  if (nfs_defect && nmp->nm_bufqiods > 1) {
      NFS_DPF(ASYNCIO,
       ("nfssvc_iod: iod %d defecting from mount %p\n",
        myiod, nmp));
      ncl_iodmount[myiod] = ((void*)0);
      nmp->nm_bufqiods--;
      break;
  }
     }
 }
finish:
 nfs_asyncdaemon[myiod] = 0;
 if (nmp)
     nmp->nm_bufqiods--;
 ncl_iodwant[myiod] = NFSIOD_NOT_AVAILABLE;
 ncl_iodmount[myiod] = ((void*)0);

 if (--ncl_numasync == 0)
  wakeup(&ncl_numasync);
 NFSUNLOCKIOD();
 if ((error == 0) || (error == EWOULDBLOCK))
  kproc_exit(0);

 kproc_exit(1);
}

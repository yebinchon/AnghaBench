
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
struct __lock_msg {int dummy; } ;


 int EOPNOTSUPP ;
 int M_NFSLOCK ;
 int PCATCH ;
 int PSOCK ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct __lock_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct __lock_msg*,int ) ;
 int free (struct __lock_msg*,int ) ;
 int lm_link ;
 int msleep (int *,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfslock_list ;
 int nfslock_mtx ;
 int uiomove (struct __lock_msg*,int,struct uio*) ;

__attribute__((used)) static int
nfslock_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error;
 struct __lock_msg *lm;

 if (uio->uio_resid != sizeof *lm)
  return (EOPNOTSUPP);
 lm = ((void*)0);
 error = 0;
 mtx_lock(&nfslock_mtx);
 while (TAILQ_EMPTY(&nfslock_list)) {
  error = msleep(&nfslock_list, &nfslock_mtx, PSOCK | PCATCH,
      "nfslockd", 0);
  if (error)
   break;
 }
 if (!error) {
  lm = TAILQ_FIRST(&nfslock_list);
  TAILQ_REMOVE(&nfslock_list, lm, lm_link);
 }
 mtx_unlock(&nfslock_mtx);
 if (!error) {
  error = uiomove(lm, sizeof *lm, uio);
  free(lm, M_NFSLOCK);
 }
 return (error);
}

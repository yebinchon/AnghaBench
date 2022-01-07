
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct __lock_msg {int dummy; } ;


 int M_NFSLOCK ;
 int TAILQ_EMPTY (int *) ;
 struct __lock_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct __lock_msg*,int ) ;
 int free (struct __lock_msg*,int ) ;
 int lm_link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nfslock_isopen ;
 int nfslock_list ;
 int nfslock_mtx ;

__attribute__((used)) static int
nfslock_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct __lock_msg *lm;

 mtx_lock(&nfslock_mtx);
 nfslock_isopen = 0;
 while (!TAILQ_EMPTY(&nfslock_list)) {
  lm = TAILQ_FIRST(&nfslock_list);

  TAILQ_REMOVE(&nfslock_list, lm, lm_link);
  free(lm, M_NFSLOCK);
 }
 mtx_unlock(&nfslock_mtx);
 return (0);
}

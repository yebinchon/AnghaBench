
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __lock_msg {int dummy; } ;


 int EOPNOTSUPP ;
 int M_NFSLOCK ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct __lock_msg*,int ) ;
 int free (struct __lock_msg*,int ) ;
 int lm_link ;
 struct __lock_msg* malloc (int,int ,int ) ;
 int memcpy (struct __lock_msg*,struct __lock_msg*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nfslock_isopen ;
 int nfslock_list ;
 int nfslock_mtx ;
 int wakeup (int *) ;

__attribute__((used)) static int
nfslock_send(struct __lock_msg *lm)
{
 struct __lock_msg *lm2;
 int error;

 error = 0;
 lm2 = malloc(sizeof *lm2, M_NFSLOCK, M_WAITOK);
 mtx_lock(&nfslock_mtx);
 if (nfslock_isopen) {
  memcpy(lm2, lm, sizeof *lm2);
  TAILQ_INSERT_TAIL(&nfslock_list, lm2, lm_link);
  wakeup(&nfslock_list);
 } else {
  error = EOPNOTSUPP;
 }
 mtx_unlock(&nfslock_mtx);
 if (error)
  free(lm2, M_NFSLOCK);
 return (error);
}

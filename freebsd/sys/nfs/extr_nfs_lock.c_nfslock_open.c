
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EOPNOTSUPP ;
 int PRIV_NFS_LOCKD ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfslock_isopen ;
 int nfslock_mtx ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
nfslock_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 int error;

 error = priv_check(td, PRIV_NFS_LOCKD);
 if (error)
  return (error);

 mtx_lock(&nfslock_mtx);
 if (!nfslock_isopen) {
  error = 0;
  nfslock_isopen = 1;
 } else {
  error = EOPNOTSUPP;
 }
 mtx_unlock(&nfslock_mtx);

 return (error);
}

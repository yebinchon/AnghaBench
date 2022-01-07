
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct file {int f_vnread_flags; int f_offset; } ;
typedef int off_t ;


 int FOFFSET_LOCKED ;
 int FOFFSET_LOCK_WAITING ;
 int FOF_NOLOCK ;
 int FOF_OFFSET ;
 int KASSERT (int,char*) ;
 scalar_t__ PUSER ;
 int msleep (int*,struct mtx*,scalar_t__,char*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct file*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;

off_t
foffset_lock(struct file *fp, int flags)
{
 struct mtx *mtxp;
 off_t res;

 KASSERT((flags & FOF_OFFSET) == 0, ("FOF_OFFSET passed"));






 if ((flags & FOF_NOLOCK) != 0)
  return (fp->f_offset);






 mtxp = mtx_pool_find(mtxpool_sleep, fp);
 mtx_lock(mtxp);
 if ((flags & FOF_NOLOCK) == 0) {
  while (fp->f_vnread_flags & FOFFSET_LOCKED) {
   fp->f_vnread_flags |= FOFFSET_LOCK_WAITING;
   msleep(&fp->f_vnread_flags, mtxp, PUSER -1,
       "vofflock", 0);
  }
  fp->f_vnread_flags |= FOFFSET_LOCKED;
 }
 res = fp->f_offset;
 mtx_unlock(mtxp);
 return (res);
}

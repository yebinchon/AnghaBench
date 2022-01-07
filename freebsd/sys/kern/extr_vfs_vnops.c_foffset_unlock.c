
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct file {int f_vnread_flags; void* f_nextoff; void* f_offset; } ;
typedef void* off_t ;


 int FOFFSET_LOCKED ;
 int FOFFSET_LOCK_WAITING ;
 int FOF_NEXTOFF ;
 int FOF_NOLOCK ;
 int FOF_NOUPDATE ;
 int FOF_OFFSET ;
 int KASSERT (int,char*) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct file*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 int wakeup (int*) ;

void
foffset_unlock(struct file *fp, off_t val, int flags)
{
 struct mtx *mtxp;

 KASSERT((flags & FOF_OFFSET) == 0, ("FOF_OFFSET passed"));


 if ((flags & FOF_NOLOCK) != 0) {
  if ((flags & FOF_NOUPDATE) == 0)
   fp->f_offset = val;
  if ((flags & FOF_NEXTOFF) != 0)
   fp->f_nextoff = val;
  return;
 }


 mtxp = mtx_pool_find(mtxpool_sleep, fp);
 mtx_lock(mtxp);
 if ((flags & FOF_NOUPDATE) == 0)
  fp->f_offset = val;
 if ((flags & FOF_NEXTOFF) != 0)
  fp->f_nextoff = val;
 if ((flags & FOF_NOLOCK) == 0) {
  KASSERT((fp->f_vnread_flags & FOFFSET_LOCKED) != 0,
      ("Lost FOFFSET_LOCKED"));
  if (fp->f_vnread_flags & FOFFSET_LOCK_WAITING)
   wakeup(&fp->f_vnread_flags);
  fp->f_vnread_flags = 0;
 }
 mtx_unlock(mtxp);
}

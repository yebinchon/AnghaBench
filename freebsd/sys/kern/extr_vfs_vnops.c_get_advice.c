
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct mtx {int dummy; } ;
struct file {TYPE_1__* f_advice; TYPE_2__* f_vnode; } ;
struct TYPE_4__ {scalar_t__ v_type; } ;
struct TYPE_3__ {scalar_t__ fa_start; scalar_t__ fa_end; int fa_advice; } ;


 int POSIX_FADV_NORMAL ;
 scalar_t__ VREG ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct file*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;

__attribute__((used)) static int
get_advice(struct file *fp, struct uio *uio)
{
 struct mtx *mtxp;
 int ret;

 ret = POSIX_FADV_NORMAL;
 if (fp->f_advice == ((void*)0) || fp->f_vnode->v_type != VREG)
  return (ret);

 mtxp = mtx_pool_find(mtxpool_sleep, fp);
 mtx_lock(mtxp);
 if (fp->f_advice != ((void*)0) &&
     uio->uio_offset >= fp->f_advice->fa_start &&
     uio->uio_offset + uio->uio_resid <= fp->f_advice->fa_end)
  ret = fp->f_advice->fa_advice;
 mtx_unlock(mtxp);
 return (ret);
}

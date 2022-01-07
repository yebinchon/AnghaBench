
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv_fw {scalar_t__ refcnt; scalar_t__ file; int flags; TYPE_1__* parent; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int refcnt; } ;


 int FIRMWARE_UNLOAD ;
 int FW_UNLOAD ;
 struct priv_fw* PRIV_FW (struct firmware const*) ;
 int firmware_mtx ;
 int firmware_tq ;
 int firmware_unload_task ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

void
firmware_put(const struct firmware *p, int flags)
{
 struct priv_fw *fp = PRIV_FW(p);

 mtx_lock(&firmware_mtx);
 fp->refcnt--;
 if (fp->refcnt == 0) {
  if (fp->parent != ((void*)0))
   fp->parent->refcnt--;
  if (flags & FIRMWARE_UNLOAD)
   fp->flags |= FW_UNLOAD;
  if (fp->file)
   taskqueue_enqueue(firmware_tq, &firmware_unload_task);
 }
 mtx_unlock(&firmware_mtx);
}

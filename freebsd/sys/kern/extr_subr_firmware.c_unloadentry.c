
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct priv_fw {scalar_t__ refcnt; int flags; int * file; TYPE_1__ fw; } ;


 int FIRMWARE_MAX ;
 int FW_UNLOAD ;
 int firmware_mtx ;
 struct priv_fw* firmware_table ;
 int linker_release_module (int *,int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
unloadentry(void *unused1, int unused2)
{
 int limit = FIRMWARE_MAX;
 int i;

 mtx_lock(&firmware_mtx);




 for (i = 0; i < limit; i++) {
  struct priv_fw *fp;
  int err;

  fp = &firmware_table[i % FIRMWARE_MAX];
  if (fp->fw.name == ((void*)0) || fp->file == ((void*)0) ||
      fp->refcnt != 0 || (fp->flags & FW_UNLOAD) == 0)
   continue;
  limit = i + FIRMWARE_MAX;
  fp->flags &= ~FW_UNLOAD;

  mtx_unlock(&firmware_mtx);
  err = linker_release_module(((void*)0), ((void*)0), fp->file);
  mtx_lock(&firmware_mtx);
  if (err == 0)
   fp->file = ((void*)0);
 }
 mtx_unlock(&firmware_mtx);
}

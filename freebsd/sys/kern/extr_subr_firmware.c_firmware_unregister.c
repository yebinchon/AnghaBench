
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct priv_fw {scalar_t__ refcnt; int file; TYPE_1__ fw; } ;
typedef int linker_file_t ;


 int EBUSY ;
 int M_TEMP ;
 int bzero (struct priv_fw*,int) ;
 int firmware_mtx ;
 int free (void*,int ) ;
 struct priv_fw* lookup (char const*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
firmware_unregister(const char *imagename)
{
 struct priv_fw *fp;
 int err;

 mtx_lock(&firmware_mtx);
 fp = lookup(imagename, ((void*)0));
 if (fp == ((void*)0)) {






  err = 0;
 } else if (fp->refcnt != 0) {
  err = EBUSY;
 } else {
  linker_file_t x = fp->file;






  free((void *) (uintptr_t) fp->fw.name, M_TEMP);
  bzero(fp, sizeof(struct priv_fw));
  fp->file = x;
  err = 0;
 }
 mtx_unlock(&firmware_mtx);
 return err;
}

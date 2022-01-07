
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct priv_fw {int * file; } ;
typedef int * linker_file_t ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int * fd_rdir; } ;


 struct thread* curthread ;
 int firmware_mtx ;
 int linker_reference_module (char*,int *,int **) ;
 int linker_release_module (char*,int *,int *) ;
 struct priv_fw* lookup (char*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char*,...) ;
 int wakeup_one (char*) ;

__attribute__((used)) static void
loadimage(void *arg, int npending)
{
 struct thread *td = curthread;
 char *imagename = arg;
 struct priv_fw *fp;
 linker_file_t result;
 int error;


 mtx_lock(&firmware_mtx);
 mtx_unlock(&firmware_mtx);

 if (td->td_proc->p_fd->fd_rdir == ((void*)0)) {
  printf("%s: root not mounted yet, no way to load image\n",
      imagename);
  goto done;
 }
 error = linker_reference_module(imagename, ((void*)0), &result);
 if (error != 0) {
  printf("%s: could not load firmware image, error %d\n",
      imagename, error);
  goto done;
 }

 mtx_lock(&firmware_mtx);
 fp = lookup(imagename, ((void*)0));
 if (fp == ((void*)0) || fp->file != ((void*)0)) {
  mtx_unlock(&firmware_mtx);
  if (fp == ((void*)0))
   printf("%s: firmware image loaded, "
       "but did not register\n", imagename);
  (void) linker_release_module(imagename, ((void*)0), ((void*)0));
  goto done;
 }
 fp->file = result;
 mtx_unlock(&firmware_mtx);
done:
 wakeup_one(imagename);
}

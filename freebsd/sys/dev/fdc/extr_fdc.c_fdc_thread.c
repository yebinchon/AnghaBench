
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int flags; int retry; int fdc_mtx; int * bp; } ;


 int FDC_KTHREAD_ALIVE ;
 int FDC_KTHREAD_EXIT ;
 int debugflags ;
 int fdc_worker (struct fdc_data*) ;
 int g_print_bio (char*,int *,char*) ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int retry_line ;

__attribute__((used)) static void
fdc_thread(void *arg)
{
 struct fdc_data *fdc;

 fdc = arg;
 int i;

 mtx_lock(&fdc->fdc_mtx);
 fdc->flags |= FDC_KTHREAD_ALIVE;
 while ((fdc->flags & FDC_KTHREAD_EXIT) == 0) {
  mtx_unlock(&fdc->fdc_mtx);
  i = fdc_worker(fdc);
  if (i && debugflags & 0x20) {
   if (fdc->bp != ((void*)0))
    g_print_bio("", fdc->bp, "");
   printf("Retry line %d\n", retry_line);
  }
  fdc->retry += i;
  mtx_lock(&fdc->fdc_mtx);
 }
 fdc->flags &= ~(FDC_KTHREAD_EXIT | FDC_KTHREAD_ALIVE);
 mtx_unlock(&fdc->fdc_mtx);

 kproc_exit(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int flags; int fdc_mtx; int dmachan; int fdc_thread; int head; int * fdc_intr; int res_irq; } ;
typedef int device_t ;


 int FDC_KTHREAD_ALIVE ;
 int FDC_KTHREAD_EXIT ;
 int FDC_NODMA ;
 int PRIBIO ;
 int bus_generic_detach (int ) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct fdc_data* device_get_softc (int ) ;
 int fdc_release_resources (struct fdc_data*) ;
 int fdout_wr (struct fdc_data*,int ) ;
 int isa_dma_release (int ) ;
 int msleep (int ,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

int
fdc_detach(device_t dev)
{
 struct fdc_data *fdc;
 int error;

 fdc = device_get_softc(dev);


 if ((error = bus_generic_detach(dev)))
  return (error);

 if (fdc->fdc_intr)
  bus_teardown_intr(dev, fdc->res_irq, fdc->fdc_intr);
 fdc->fdc_intr = ((void*)0);


 mtx_lock(&fdc->fdc_mtx);
 fdc->flags |= FDC_KTHREAD_EXIT;
 wakeup(&fdc->head);
 while ((fdc->flags & FDC_KTHREAD_ALIVE) != 0)
  msleep(fdc->fdc_thread, &fdc->fdc_mtx, PRIBIO, "fdcdet", 0);
 mtx_unlock(&fdc->fdc_mtx);


 fdout_wr(fdc, 0);

 if (!(fdc->flags & FDC_NODMA))
  isa_dma_release(fdc->dmachan);
 fdc_release_resources(fdc);
 mtx_destroy(&fdc->fdc_mtx);
 return (0);
}

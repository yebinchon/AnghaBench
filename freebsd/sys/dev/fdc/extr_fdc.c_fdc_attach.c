
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int flags; int head; scalar_t__ fdout; int fdc_mtx; int fdcu; int dmachan; int fdc_intr; int res_irq; int fdc_dev; } ;
typedef int device_t ;


 int FDC_NEEDS_RESET ;
 int FDC_NODMA ;
 int FDC_NOFAST ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MAX_BYTES_PER_CYL ;
 int MTX_DEF ;
 int M_WAITOK ;
 int bioq_init (int *) ;
 int bus_setup_intr (int ,int ,int,int *,int *,struct fdc_data*,int *) ;
 struct fdc_data* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int fdc_initial_reset (int ,struct fdc_data*) ;
 int * fdc_intr ;
 int * fdc_intr_fast ;
 int fdout_wr (struct fdc_data*,scalar_t__) ;
 int hz ;
 int isa_dma_acquire (int ) ;
 int isa_dma_init (int ,int ,int ) ;
 int isa_dma_release (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int settle ;

int
fdc_attach(device_t dev)
{
 struct fdc_data *fdc;
 int error;

 fdc = device_get_softc(dev);
 fdc->fdc_dev = dev;
 error = fdc_initial_reset(dev, fdc);
 if (error) {
  device_printf(dev, "does not respond\n");
  return (error);
 }
 error = bus_setup_intr(dev, fdc->res_irq,
     INTR_TYPE_BIO | INTR_ENTROPY |
     ((fdc->flags & FDC_NOFAST) ? INTR_MPSAFE : 0),
            ((fdc->flags & FDC_NOFAST) ? ((void*)0) : fdc_intr_fast),
     ((fdc->flags & FDC_NOFAST) ? fdc_intr : ((void*)0)),
          fdc, &fdc->fdc_intr);
 if (error) {
  device_printf(dev, "cannot setup interrupt\n");
  return (error);
 }
 if (!(fdc->flags & FDC_NODMA)) {
  error = isa_dma_acquire(fdc->dmachan);
  if (!error) {
   error = isa_dma_init(fdc->dmachan,
       MAX_BYTES_PER_CYL, M_WAITOK);
   if (error)
    isa_dma_release(fdc->dmachan);
  }
  if (error)
   return (error);
 }
 fdc->fdcu = device_get_unit(dev);
 fdc->flags |= FDC_NEEDS_RESET;

 mtx_init(&fdc->fdc_mtx, "fdc lock", ((void*)0), MTX_DEF);


 fdout_wr(fdc, fdc->fdout = 0);
 bioq_init(&fdc->head);

 settle = hz / 8;

 return (0);
}

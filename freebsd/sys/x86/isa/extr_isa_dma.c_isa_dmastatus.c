
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isa_dma_lock ;
 int isa_dmastatus_locked (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
isa_dmastatus(int chan)
{
 int status;

 mtx_lock(&isa_dma_lock);
 status = isa_dmastatus_locked(chan);
 mtx_unlock(&isa_dma_lock);

 return (status);
}

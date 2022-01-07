
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_info {int lock; int parent_dmat; int irq; int irqid; int ih; int reg; int regid; int regtype; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct tr_info*,int ) ;
 struct tr_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
tr_pci_detach(device_t dev)
{
 int r;
 struct tr_info *tr;

 r = pcm_unregister(dev);
 if (r)
  return r;

 tr = pcm_getdevinfo(dev);
 bus_release_resource(dev, tr->regtype, tr->regid, tr->reg);
 bus_teardown_intr(dev, tr->irq, tr->ih);
 bus_release_resource(dev, SYS_RES_IRQ, tr->irqid, tr->irq);
 bus_dma_tag_destroy(tr->parent_dmat);
 snd_mtxfree(tr->lock);
 free(tr, M_DEVBUF);

 return 0;
}

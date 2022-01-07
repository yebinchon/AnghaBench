
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801_info {int parent_dmat; int irq; int irqid; int ih; int reg; int regid; int regtype; int * radio; } ;
typedef int device_t ;


 int DPRINT (char*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_delete_child (int ,int *) ;
 int free (struct fm801_info*,int ) ;
 struct fm801_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
fm801_pci_detach(device_t dev)
{
 int r;
 struct fm801_info *fm801;

 DPRINT("Forte Media FM801 detach\n");

 fm801 = pcm_getdevinfo(dev);

 r = bus_generic_detach(dev);
 if (r)
  return r;
 if (fm801->radio != ((void*)0)) {
  r = device_delete_child(dev, fm801->radio);
  if (r)
   return r;
  fm801->radio = ((void*)0);
 }

 r = pcm_unregister(dev);
 if (r)
  return r;

 bus_release_resource(dev, fm801->regtype, fm801->regid, fm801->reg);
 bus_teardown_intr(dev, fm801->irq, fm801->ih);
 bus_release_resource(dev, SYS_RES_IRQ, fm801->irqid, fm801->irq);
 bus_dma_tag_destroy(fm801->parent_dmat);
 free(fm801, M_DEVBUF);
 return 0;
}

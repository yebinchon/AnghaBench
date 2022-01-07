
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct agg_info {int lock; int buf_dmat; int stat_dmat; int stat_map; int stat; int reg; int regid; int irq; int irqid; int ih; scalar_t__ active; } ;
typedef int device_t ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int ,int) ;
 int EBUSY ;
 int M_DEVBUF ;
 int PCI_POWERSTATE_D3 ;
 int PORT_HOSTINT_CTRL ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int agg_lock (struct agg_info*) ;
 int agg_power (struct agg_info*,int ) ;
 int agg_unlock (struct agg_info*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int dma_free (int ,int ,int ) ;
 int free (struct agg_info*,int ) ;
 int mtx_destroy (int *) ;
 struct agg_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
agg_detach(device_t dev)
{
 struct agg_info *ess = pcm_getdevinfo(dev);
 int r;
 u_int16_t icr;

 icr = AGG_RD(ess, PORT_HOSTINT_CTRL, 2);
 AGG_WR(ess, PORT_HOSTINT_CTRL, 0, 2);

 agg_lock(ess);
 if (ess->active) {
  AGG_WR(ess, PORT_HOSTINT_CTRL, icr, 2);
  agg_unlock(ess);
  return EBUSY;
 }
 agg_unlock(ess);

 r = pcm_unregister(dev);
 if (r) {
  AGG_WR(ess, PORT_HOSTINT_CTRL, icr, 2);
  return r;
 }

 agg_lock(ess);
 agg_power(ess, PCI_POWERSTATE_D3);
 agg_unlock(ess);

 bus_teardown_intr(dev, ess->irq, ess->ih);
 bus_release_resource(dev, SYS_RES_IRQ, ess->irqid, ess->irq);
 bus_release_resource(dev, SYS_RES_IOPORT, ess->regid, ess->reg);
 dma_free(ess->stat_dmat, ess->stat, ess->stat_map);
 bus_dma_tag_destroy(ess->stat_dmat);
 bus_dma_tag_destroy(ess->buf_dmat);
 mtx_destroy(&ess->lock);
 free(ess, M_DEVBUF);
 return 0;
}

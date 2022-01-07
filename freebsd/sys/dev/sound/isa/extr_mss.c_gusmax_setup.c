
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mss_info {struct resource* conf_base; } ;
typedef int device_t ;


 size_t DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;
 size_t device_get_flags (int ) ;
 int device_get_parent (int ) ;
 size_t isa_get_drq (int ) ;
 size_t isa_get_irq (int ) ;
 int port_wr (struct resource*,int,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void
gusmax_setup(struct mss_info *mss, device_t dev, struct resource *alt)
{
 static const unsigned char irq_bits[16] = {
  0, 0, 0, 3, 0, 2, 0, 4, 0, 1, 0, 5, 6, 0, 0, 7
 };
 static const unsigned char dma_bits[8] = {
  0, 1, 0, 2, 0, 3, 4, 5
 };
 device_t parent = device_get_parent(dev);
 unsigned char irqctl, dmactl;
 int s;

 s = splhigh();

 port_wr(alt, 0x0f, 0x05);
 port_wr(alt, 0x00, 0x0c);
 port_wr(alt, 0x0b, 0x00);

 port_wr(alt, 0x0f, 0x00);

 irqctl = irq_bits[isa_get_irq(parent)];

 irqctl |= 0x40;
 dmactl = dma_bits[isa_get_drq(parent)];
 if (device_get_flags(parent) & DV_F_DUAL_DMA)
  dmactl |= dma_bits[device_get_flags(parent) & DV_F_DRQ_MASK]
      << 3;




 port_wr(alt, 0x00, 0x0c);
 port_wr(alt, 0x0b, dmactl | 0x80);
 port_wr(alt, 0x00, 0x4c);
 port_wr(alt, 0x0b, irqctl);

 port_wr(alt, 0x00, 0x0c);
 port_wr(alt, 0x0b, dmactl);
 port_wr(alt, 0x00, 0x4c);
 port_wr(alt, 0x0b, irqctl);

 port_wr(mss->conf_base, 2, 0);
 port_wr(alt, 0x00, 0x0c);
 port_wr(mss->conf_base, 2, 0);

 splx(s);
}

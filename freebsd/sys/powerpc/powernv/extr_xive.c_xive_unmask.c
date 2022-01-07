
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xive_irq {scalar_t__ eoi_page; } ;
typedef int device_t ;


 scalar_t__ XIVE_IRQ_PQ_00 ;
 int xive_read_mmap8 (scalar_t__) ;

__attribute__((used)) static void
xive_unmask(device_t dev, u_int irq, void *priv)
{
 struct xive_irq *rirq;

 rirq = priv;

 xive_read_mmap8(rirq->eoi_page + XIVE_IRQ_PQ_00);
}

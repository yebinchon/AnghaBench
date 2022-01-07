
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq {scalar_t__ res; int rid; scalar_t__ tag; } ;
struct adapter {int dev; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int bzero (struct irq*,int) ;

__attribute__((used)) static int
t4_free_irq(struct adapter *sc, struct irq *irq)
{
 if (irq->tag)
  bus_teardown_intr(sc->dev, irq->res, irq->tag);
 if (irq->res)
  bus_release_resource(sc->dev, SYS_RES_IRQ, irq->rid, irq->res);

 bzero(irq, sizeof(*irq));

 return (0);
}

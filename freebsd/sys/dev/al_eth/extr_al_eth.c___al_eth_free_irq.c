
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_irq {scalar_t__ requested; int vector; int cookie; int res; } ;
struct al_eth_adapter {int irq_vecs; int dev; struct al_eth_irq* irq_tbl; } ;


 int bus_teardown_intr (int ,int ,int ) ;
 int device_printf (int ,char*,int ) ;
 int device_printf_dbg (int ,char*,int ) ;

__attribute__((used)) static void
__al_eth_free_irq(struct al_eth_adapter *adapter)
{
 struct al_eth_irq *irq;
 int i, rc;

 for (i = 0; i < adapter->irq_vecs; i++) {
  irq = &adapter->irq_tbl[i];
  if (irq->requested != 0) {
   device_printf_dbg(adapter->dev, "tear down irq: %d\n",
       irq->vector);
   rc = bus_teardown_intr(adapter->dev, irq->res,
       irq->cookie);
   if (rc != 0)
    device_printf(adapter->dev, "failed to tear "
        "down irq: %d\n", irq->vector);

  }
  irq->requested = 0;
 }
}

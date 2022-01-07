
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vmctx {int dummy; } ;
struct pirq {int reg; scalar_t__ active_count; int lock; } ;


 int PIRQ_DIS ;
 int PIRQ_IRQ ;
 int assert (int) ;
 int nitems (struct pirq*) ;
 scalar_t__ pirq_valid_irq (int) ;
 struct pirq* pirqs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vm_isa_assert_irq (struct vmctx*,int,int) ;
 int vm_isa_deassert_irq (struct vmctx*,int,int) ;

void
pirq_write(struct vmctx *ctx, int pin, uint8_t val)
{
 struct pirq *pirq;

 assert(pin > 0 && pin <= nitems(pirqs));
 pirq = &pirqs[pin - 1];
 pthread_mutex_lock(&pirq->lock);
 if (pirq->reg != (val & (PIRQ_DIS | PIRQ_IRQ))) {
  if (pirq->active_count != 0 && pirq_valid_irq(pirq->reg))
   vm_isa_deassert_irq(ctx, pirq->reg & PIRQ_IRQ, -1);
  pirq->reg = val & (PIRQ_DIS | PIRQ_IRQ);
  if (pirq->active_count != 0 && pirq_valid_irq(pirq->reg))
   vm_isa_assert_irq(ctx, pirq->reg & PIRQ_IRQ, -1);
 }
 pthread_mutex_unlock(&pirq->lock);
}

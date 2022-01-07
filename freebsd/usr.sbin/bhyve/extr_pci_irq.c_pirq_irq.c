
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; } ;


 int PIRQ_IRQ ;
 int assert (int) ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* pirqs ;

int
pirq_irq(int pin)
{
 assert(pin > 0 && pin <= nitems(pirqs));
 return (pirqs[pin - 1].reg & PIRQ_IRQ);
}

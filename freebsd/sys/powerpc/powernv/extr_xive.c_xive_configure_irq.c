
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xive_irq {int dummy; } ;


 int M_WAITOK ;
 int M_XIVE ;
 struct xive_irq* malloc (int,int ,int ) ;
 int xive_init_irq (struct xive_irq*,int ) ;

__attribute__((used)) static struct xive_irq *
xive_configure_irq(u_int irq)
{
 struct xive_irq *irqd;

 irqd = malloc(sizeof(struct xive_irq), M_XIVE, M_WAITOK);

 xive_init_irq(irqd, irq);

 return (irqd);
}

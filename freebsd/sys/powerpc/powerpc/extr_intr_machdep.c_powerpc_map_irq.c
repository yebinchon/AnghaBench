
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct powerpc_intr {scalar_t__ irq; scalar_t__ intline; int * pic; } ;
struct pic {scalar_t__ irqs; scalar_t__ ipis; scalar_t__ base; int * dev; } ;


 int EINVAL ;
 int npics ;
 struct pic* piclist ;
 int * root_pic ;

__attribute__((used)) static int
powerpc_map_irq(struct powerpc_intr *i)
{
 struct pic *p;
 u_int cnt;
 int idx;

 for (idx = 0; idx < npics; idx++) {
  p = &piclist[idx];
  cnt = p->irqs + p->ipis;
  if (i->irq >= p->base && i->irq < p->base + cnt)
   break;
 }
 if (idx == npics)
  return (EINVAL);

 i->intline = i->irq - p->base;
 i->pic = p->dev;


 if (i->pic == ((void*)0))
  i->pic = root_pic;

 return (0);
}

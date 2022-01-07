
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_2__ {struct intr_irqsrc* isrc; } ;


 TYPE_1__** irq_map ;
 size_t irq_map_count ;
 int irq_map_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct intr_irqsrc *
intr_map_get_isrc(u_int res_id)
{
 struct intr_irqsrc *isrc;

 mtx_lock(&irq_map_lock);
 if ((res_id >= irq_map_count) || (irq_map[res_id] == ((void*)0))) {
  mtx_unlock(&irq_map_lock);
  return (((void*)0));
 }
 isrc = irq_map[res_id]->isrc;
 mtx_unlock(&irq_map_lock);
 return (isrc);
}

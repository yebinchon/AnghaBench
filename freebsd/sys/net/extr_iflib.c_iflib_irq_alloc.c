
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_irq_t ;
typedef int if_ctx_t ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;


 int _iflib_irq_alloc (int ,int ,int,int ,int ,void*,char const*) ;

int
iflib_irq_alloc(if_ctx_t ctx, if_irq_t irq, int rid,
  driver_filter_t filter, void *filter_arg, driver_intr_t handler, void *arg, const char *name)
{

 return (_iflib_irq_alloc(ctx, irq, rid, filter, handler, arg, name));
}

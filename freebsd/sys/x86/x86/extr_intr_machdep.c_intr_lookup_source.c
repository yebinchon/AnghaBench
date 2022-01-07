
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {int dummy; } ;


 struct intsrc** interrupt_sources ;
 int num_io_irqs ;

struct intsrc *
intr_lookup_source(int vector)
{

 if (vector < 0 || vector >= num_io_irqs)
  return (((void*)0));
 return (interrupt_sources[vector]);
}

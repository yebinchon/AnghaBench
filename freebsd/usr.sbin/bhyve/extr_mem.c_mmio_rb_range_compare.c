
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmio_rb_range {scalar_t__ mr_end; scalar_t__ mr_base; } ;



__attribute__((used)) static int
mmio_rb_range_compare(struct mmio_rb_range *a, struct mmio_rb_range *b)
{
 if (a->mr_end < b->mr_base)
  return (-1);
 else if (a->mr_base > b->mr_end)
  return (1);
 return (0);
}

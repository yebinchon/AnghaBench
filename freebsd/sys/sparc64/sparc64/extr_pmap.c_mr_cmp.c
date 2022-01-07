
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_mem_region {scalar_t__ mr_start; } ;



__attribute__((used)) static int
mr_cmp(const void *a, const void *b)
{
 const struct ofw_mem_region *mra;
 const struct ofw_mem_region *mrb;

 mra = a;
 mrb = b;
 if (mra->mr_start < mrb->mr_start)
  return (-1);
 else if (mra->mr_start > mrb->mr_start)
  return (1);
 else
  return (0);
}

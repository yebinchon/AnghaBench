
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {scalar_t__ mr_start; } ;



__attribute__((used)) static int
mr_cmp(const void *a, const void *b)
{
 const struct mem_region *regiona, *regionb;

 regiona = a;
 regionb = b;
 if (regiona->mr_start < regionb->mr_start)
  return (-1);
 else if (regiona->mr_start > regionb->mr_start)
  return (1);
 else
  return (0);
}
